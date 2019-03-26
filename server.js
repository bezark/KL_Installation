/*jshint esversion: 6 */
const async = require("async");
const http = require("http");
const https = require("https");
const cheerio = require('cheerio');
const moment = require('moment');
moment().format();

const path = require('path');

//-------------------------------------------------------------------AUDIO_CHILD
const { fork } = require('child_process');

const audio = fork("audio.js");

audio.on('message', (msg) => {
    console.log("FROM CHILD: " + msg);
});

audio.send('hello audio!');


let listOutput = [];
let batchCounter = 0;
let counter = null;
let doubleChecklist = [];

// This gets the list and maintains it every 3 seconds

// Max.addHandler("nextSecond", () => {
setInterval(() => {
    //check that counter isn't null

    if (counter != null) {



        //delete old

        let maxOutput = listOutput.filter(
            (elem) => {
                // console.log(counter + " " + dateConvert(elem[1])); 
                return counter.isSame(dateConvert(elem[1]));
            });



        //culls duplicate list;
        if (doubleChecklist.length > 1500) {

            let tempDubArr = [];

            for (let i = 0; i < 1000; i++) {
                tempDubArr.push(doubleChecklist[i]);
            }

            doubleChecklist = tempDubArr;

            console.log("Just trimmed doubleChecklist " + doubleChecklist.length);

        }





        // console.log(listOutput.length);
        listOutput = listOutput.filter(elem => counter.isBefore(dateConvert(elem[1])));
        console.log("listOutput.length " + listOutput.length);

        // console.log(maxOutput)
        maxOutput = maxOutput.map(x => x[0]);
        // console.log(maxOutput);

        // maxOutput = removeDuplicates(maxOutput);

        maxOutput = maxOutput.filter((x) => {

            if (!x.replace(/\s/g, '').length) {
                // console.log('string only contains whitespace (ie. spaces, tabs or line breaks)');

                return false;

            } else {
                return true;
            }

        });


        // console.log(maxOutput);

        counter.add(1, 's');

        // console.log(maxOutput);

        // console.log(maxOutput);

        // if (!maxOutput.replace(/\s/g, '').length) {
        //     console.log('string only contains whitespace (ie. spaces, tabs or line breaks)');



        // }
        if (maxOutput.length != 0) {
            // console.log(maxOutput);

            audio.send({'say' : maxOutput});

        } else {
            // console.log("MAXOUPUT WAS WHITESPACE");
        }

    } else {

        console.log("counter is null");

    }
}, 1000);

function removeDuplicates(arr) {
    let unique_array = [];
    for (let i = 0; i < arr.length; i++) {
        if (unique_array.indexOf(arr[i]) == -1) {
            unique_array.push(arr[i]);
        }
    }
    return unique_array;
}

function dateConvert(string) {

    tempD = string.toString();


    firstHalf = tempD.substring(0, 8);
    secondHalf = tempD.substring(8, tempD.length);

    return moment(firstHalf + "T" + secondHalf);



}



// Max.addHandler("fetch", () => {

setInterval(() => {
    getChanges((x) => {
        // console.log(x);


        if (counter == null) {
            // counter = x[x.length - 1][1];

            counter = dateConvert(x[x.length - 1][1]);

        }
        console.log(x.length + " in stack");
        async.eachOf(x, (target, key, callbutt) => {

            // console.log(target + " -- " + key);

            doubleChecklist.unshift(target);

            getDeletion(target[0], function (output, url) {

                // console.log(output);


                if (output != null && x[key][1] != undefined) {

                    // console.log(x[key][1]);

                    listOutput.push([output, x[key][1]]);


                }

                return callbutt(null);
                //delete from list


                // console.log("  -  ");

            });



        }, (err) => {

            // console.log("sort");

            listOutput.sort((a, b) => {

                return a[1] - b[1];

            });

            // console.log("end sort");

            // Max.outlet("refetch");


        });


        // if (!nextSecondKickedOff) {
        //     Max.outlet("nsko", 1);
        //     nextSecondKickedOff = true;
        // }


    });

}, 10000);



function getChanges(callback) {
    // batchCounter++;
    console.log("Batch: " + batchCounter++);

    let req = https.get("https://en.wikipedia.org/wiki/Special:RecentChanges?goodfaith=likelygood&hidecategorization=1&hideWikibase=1&limit=500&days=0.04166&urlversion=2",
        (res) => {
            console.log('statusCode:', res.statusCode);
            //console.log('headers:', res.headers);
            let page = "";
            res.on('data', (d) => {
                //console.log(d.toString());
                page += d.toString();

            });

            res.on('end', () => {

                processList(page, callback);

            });

        });






}

function processList(page, callback) {


    const $ = cheerio.load(page);

    let output = [];
    let list = $(".mw-changeslist-diff");
    // $(".mw-changeslist-diff")
    let count = 0;

    console.log("doubleChecklist.length " + doubleChecklist.length);

    for (let x = 0; x < list.length; x++) {

        let tStamp = list[x].parent.parent.parent.parent.attribs["data-mw-ts"];
        let tempHref = list[x].attribs.href;
        // console.log(tempHref + " " + tStamp + " " + count++);

        let tempdubs = doubleChecklist.filter(listItem => {
            return listItem[0] == tempHref;
        });

        if (tempdubs.length == 0) {

            output.push([tempHref, parseInt(tStamp), true]);

        } else {

            // console.log("already in list " + x);

        }

    }
    callback(output);
}

function getDeletion(url, callback) {

    // console.log("https://en.wikipedia.org" + url);

    let req = https.get("https://en.wikipedia.org" + url,
        (res) => {
            // console.log('statusCode:', res.statusCode);
            // if (res.statusCode != 200) {
            //     callback(null);
            // }
            //console.log('headers:', res.headers);
            let data = "";
            res.on('data', (d) => {
                //console.log(d.toString());
                data += d.toString();

            });

            res.on('end', () => {
                //this is where cheerio happens
                const del = cheerio.load(data);

                tempDelLine = del(".diff-deletedline");

                // console.log(tempDelLine);

                // console.log(tempDelLine.length);

                if (tempDelLine.length == 0) {
                    callback(null, url);
                } else {
                    //check for companion addition

                    let output = "";
                    for (let i = 0; i < tempDelLine.length; i++) {

                        if (!checkForAdd(tempDelLine[i]) && checkForMove(tempDelLine[i])) {
                            if (tempDelLine[i].firstChild) {
                                output += tempDelLine[i].firstChild.firstChild.data;
                            } else {
                                output += " ";
                            }

                        } else {

                            let temp = tempDelLine[i].firstChild.children.filter((x) => {
                                return x.type == "tag" && x.name == "del";
                            });
                            for (let x in temp) {
                                if (temp[x].children[0].data) {
                                    output += temp[x].children[0].data;
                                }
                            }
                        }

                    }

                    callback(output);

                }

            });

        });



}

function checkForAdd(node) {

    tempRow = node.parent.children;

    tempAdded = tempRow.filter((x) => {
        if (x.type == "tag") {
            return x.attribs.class == "diff-addedline";
        } else {
            return false;
        }
    });

    if (tempAdded.length == 1) {
        return true;
    } else {
        return false;
    }

}

function checkForMove(node) {

    temp = node.previousElementSibling;
    if (temp == null) {
        return true;
    } else {
        temp = temp.firstChild.className;
        if (temp == "mw-diff-movedpara-left") {

            return false;

        } else {
            return true;
        }
    }
}