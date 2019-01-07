/*jshint esversion: 6 */
const async = require("async");
const http = require("http");
const https = require("https");
const cheerio = require('cheerio');
const moment = require('moment');
moment().format();

const path = require('path');


const Max = require('max-api');



let listOutput = [];

let batchCounter = 0;

let counter = null;

console.log("Stream starting");


let nextSecondKickedOff = false;


// This gets the list and maintains it every 3 seconds

Max.addHandler("nextSecond", () => {

    //check that counter isn't null

    if (counter != null) {


        
        //delete old

        let maxOutput = listOutput.filter(
            (elem) => {
                // console.log(counter + " " + dateConvert(elem[1])); 
                return counter.isSame(dateConvert(elem[1]));
            });

        
        // Max.post(listOutput.length);
        listOutput = listOutput.filter(elem => counter.isBefore(dateConvert(elem[1])));
        // Max.post(listOutput.length);
        
        // Max.post(maxOutput)
        maxOutput = maxOutput.map(x => x[0]);
        // Max.post(maxOutput);
        
        maxOutput = removeDuplicates(maxOutput);


        // Max.post(maxOutput);

        counter.add(1, 's');

        Max.post(maxOutput);
		if(maxOutput.length){
        Max.outlet(maxOutput);};

    } else {

        Max.post("counter is null");

    }
});

function removeDuplicates(arr){
    let unique_array = [];
    for(let i = 0;i < arr.length; i++){
        if(unique_array.indexOf(arr[i]) == -1){
            unique_array.push(arr[i]);
        }
    }
    return unique_array;
}

function dateConvert (string) {

    tempD = string.toString();

    
    firstHalf = tempD.substring(0, 8);
    secondHalf = tempD.substring(8, tempD.length);

    return moment(firstHalf + "T" + secondHalf);



}



Max.addHandler("fetch", () => {
    getChanges((x) => {
        // console.log(x);


        if (counter == null) {
            // counter = x[x.length - 1][1];

            counter = dateConvert(x[x.length - 1][1]);

        }
        Max.post( x.length +" in stack");
        async.eachOf(x, (target, key, callbutt) => {

            // console.log(target + " -- " + key);

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

            Max.outlet("refetch");
		

        });


			if(!nextSecondKickedOff){
				Max.outlet("nsko", 1);
				nextSecondKickedOff = true;
				}


    });

});



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
    let list = $(".special").children();
    let count = 0;

    for (let x = 0; x < list.length; x++) {

        let tStamp = list[x].attribs["data-mw-ts"];
        let tempHref = list[x].children[1].children[1].attribs.href;
        // console.log(tempHref + " " + tStamp + " " + count++);

        output.push([tempHref, parseInt(tStamp), true]);



    }
    callback(output);
}

//This replaces the link names with deletions, and flips bool.


// setInterval(() => {
//     console.log("delGetter");
//     console.log(list.length);
//     // for (let i = list.length - 1; i >= 0; i--) {
//     //     // console.log(list[i][2]);
//     //     if (list[i][2]) {
//     //         url = list[i][0];

//     //         getDeletion(url, (x) => {

//     //             console.log("getDeletion>callback")

//     //         });
//     //     }
//     // }




// }, 10000);


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
                            if (tempDelLine[i].firstChild != null) {
                                output += tempDelLine[i].firstChild.firstChild.data;
                            } else {
                                output += " ";
                            }

                        } else {

                            let temp = tempDelLine[i].firstChild.children.filter((x) => {
                                return x.type == "tag" && x.name == "del";
                            });
                            for (let x in temp) {
                                output += temp[x].children[0].data;
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