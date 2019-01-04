/*jshint esversion: 6 */
const async = require("async");
const http = require("http");
const https = require("https");
const cheerio = require('cheerio');

const path = require('path');

try {
    const Max = require('max-api');
} catch (error) {
    console.log(error);
}


let list = [];

let batchCounter = 0;

let latestTimestamp;

console.log("Stream starting");



setTimeout(function () {
    // console.log(list.length);
    // console.log(list);
    process.exit();
}, 12000);

// This gets the list and maintains it every 3 seconds
setInterval(() => {


    getChanges((x) => {
        // console.log(x);


        if (list.length == 0) {
            list = x;

            async.eachOf(list, (target, key) => {

                // console.log(target + " -- " + key);

                getDeletion(target[0], function (output, url) {

                    console.log(output);
                    console.log("  -  ");

                });



            }, (err) => {

                console.log(err);

            });

            // getDeletion(x[0], function (output) {

            //     console.log(output);

            // });

        } else {

            // latestTimestamp = list[0][1];

            // // console.log(latestTimestamp);

            // for (let i = x.length; i > 0; i--) {

            //     if (latestTimestamp < x[i - 1][1]) {
            //         // console.log(x[i - 1][1]);
            //         list.unshift(x[i]);

            //     }

            // }


        }

        // console.log(list);



    });
}, 3000);



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
            if (res.statusCode != 200) {
                callback(null);
            }
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

                console.log(tempDelLine.length);

                if (tempDelLine.length == 0) {
                    callback(null, url);
                } else {
                    //check for companion addition

                    let output = "";
                    for (let i = 0; i < tempDelLine.length; i++) {

                        if (!checkForAdd(tempDelLine[i]) && checkForMove(tempDelLine[i])) {
                            if(tempDelLine[i].firstChild != null){
                            output += tempDelLine[i].firstChild.firstChild.data;
                            } else {
                                output += " ";
                            }

                        } else {

                            let temp = tempDelLine[i].firstChild.children.filter((x) => { return x.type == "tag" && x.name == "del"; });
                            for(let x in temp){
                                output += temp[x].children[0].data;
                            }
                        }

                    }

                    callback(output);

                }



                // console.log($);

                // callback(tempDelLine, url);

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

function checkForMove(node){
    
    temp = node.previousElementSibling;
    if(temp == null){ return true} else {
        temp = temp.firstChild.className;
    if(temp == "mw-diff-movedpara-left"){

        return false;

    } else {
        return true;
    }
}
}