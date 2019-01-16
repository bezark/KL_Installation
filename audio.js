/*jshint esversion: 6 */

//---------------------------------------------------------------------LIB-CONST
const async = require("async");
const say = require("say");
const path = require('path');
const fs = require("fs");
const Max = require('max-api');
//----------------------------------------------------------------------MY-CONST

const audioFolder = __dirname + "/audio";

//------------------------------------------------------------------------MY-LET

let voiceBankIndex = 0;
let voiceBankName = "default";

let voiceBankIsFree = new Array(6);
for (let i = 0; i < voiceBankIsFree.length; i++) {
    voiceBankIsFree[i] = true;
}

//------------------------------------------------------------------STARTUP-INFO
Max.post("Audio Process");
Max.post(audioFolder);
Max.post(path.isAbsolute(audioFolder));
//------------------------------------------------------------------MAX-HANDLERS
Max.addHandler("init", (string) => {

    voiceBankName = string;

    Max.post("filenames will now use: " + voiceBankName);

});


Max.addHandler("say", (string) => {

    let strClean = string.replace(/[^\w\s]/gi, '');

    if (strClean.length > 128) {
        strClean = strClean.substring(0, 128);
    }


    let tempFreeVoice = findFreeVoice();

    Max.post(tempFreeVoice);

    if (tempFreeVoice) {

        say.export(strClean, "Alex", 0.5, audioFolder + "/" + voiceBankName + "_" + tempFreeVoice + ".wav", (err) => {

            if (err != null) {
                console.log(err);
            } else {
                Max.post("file written to " + audioFolder + "/" + voiceBankName + "_" + tempFreeVoice + ".wav");

                Max.outlet([parseInt(tempFreeVoice), audioFolder + "/" + voiceBankName + "_" + tempFreeVoice + ".wav"]);

                voiceBankIndex = addMod(voiceBankIndex, 4);
                console.log(tempFreeVoice);
            }

        });
    } else {

        Max.post("All voices filled");

    }





});

Max.addHandler("state", (num) => {

    let tempNum = parseInt(num);

    voiceBankIsFree[tempNum] = true;

})


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