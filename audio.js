/*jshint esversion: 6 */

//---------------------------------------------------------------------LIB-CONST
const say = require("say");
const path = require('path');
// // const fs = require("fs");
// const Max = require('max-api');
//----------------------------------------------------------------------MY-CONST

const audioFolder = __dirname + "/audio";

//------------------------------------------------------------------------MY-LET

let voiceBankIndex = 0;
let voiceBankName = "default";

let numVoices = 2;

let voiceBankIsFree = new Array(numVoices);
for (let i = 0; i < voiceBankIsFree.length; i++) {
    voiceBankIsFree[i] = true;
}

//------------------------------------------------------------------STARTUP-INFO
console.log("Audio Process");
console.log(audioFolder);
console.log(path.isAbsolute(audioFolder));
//------------------------------------------------------------------MAX-HANDLERS


process.on('message', (msg) => {
    console.log("child says: " + msg);
});

// Max.addHand ler("say", (string) => {

//     let strClean = string.replace(/[^\w\s]/gi, '');

//     if (strClean.length > 120) {
//         strClean = strClean.substring(0, 120);
//     }

//     if (!strClean.replace(/\s/g, '').length) {
//         console.log('string only contains whitespace (ie. spaces, tabs or line breaks)');
//         strClean = "ummmmmm";


//     } else if (strClean == "") {
//         console.log("string was ''");

//         strClean = "ummmmmm";

//     }

//     let tempFreeVoice = findFreeVoice();

//     console.log(tempFreeVoice);

//     if (tempFreeVoice) {

//         say.export(strClean, "Alex", 1.2, audioFolder + "/" + voiceBankName + "_" + tempFreeVoice + ".wav", (err) => {

//             if (err != null) {
//                 console.error(err);
//             } else {
//                 // console.log("file written to " + audioFolder + "/" + voiceBankName + "_" + tempFreeVoice + ".wav");

//                 Max.outlet([parseInt(tempFreeVoice), audioFolder + "/" + voiceBankName + "_" + tempFreeVoice + ".wav"]);

//                 voiceBankIndex = addMod(voiceBankIndex, numVoices);
//                 // console.log(tempFreeVoice);
//             }

//         //THIS IS WHERE IT GOESSSSS!!!!

//         });
//     } else {

//         console.log("All voices filled");

//     }





// });

// Max.addHandler("state", (num) => {

//     let tempNum = parseInt(num);

//     setTimeout(() => {
//         voiceBankIsFree[tempNum] = true;
//     }, 4000);



// });


//---------------------------------------------------------------------FUNCITONS

function findFreeVoice() {
    console.log(voiceBankIsFree);
    for (let i in voiceBankIsFree) {

        if (voiceBankIsFree[i]) {

            voiceBankIsFree[i] = false;

            return i;

        }
    }

    return null;

}



function addMod(int, lim) {


    int = int + 1;

    if (int > lim - 1) {
        return 0;
    } else {
        return int;
    }

}