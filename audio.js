/*jshint esversion: 6 */
const async = require("async");
const say = require("say");

const path = require('path');

const fs = require("fs");

const Max = require('max-api');

const audioFolder = __dirname + "/audio";

let voiceBankIndex = 0;
let voiceBankName = "default";

let voiceBankIsFree = new Array(6);

for(i in voiceBankIsFree){voiceBankIsFree[i] = true;};
Max.post(voiceBankIsFree);

Max.post("Audio Process");
Max.post(audioFolder);
Max.post(path.isAbsolute(audioFolder));

Max.addHandler("init", (string) =>{

    voiceBankName = string;

    Max.post("filenames will now use: " + voiceBankName);

})

Max.addHandler("say", (string) => {

    let strClean = string.replace(/[^\w\s]/gi, '');

	if(strClean.length > 128) 
		{ 
			strClean = strClean.substring(0,128)
		};

    Max.post('say \"' + strClean +'\" -o audio/test1');

    

    Max.post(voiceBankIndex);

    let tempFreeVoice = findFreeVoice(voiceBankIsFree);

    say.export(strClean, "Alex", 0.5, audioFolder + "/" + voiceBankName + "_" + voiceBankIndex + ".wav", (err) => {

        if(err != null){
            console.log(err);
        } else {
            Max.post("file written to " + audioFolder + "/" + voiceBankName + "_" + voiceBankIndex + ".wav");
            Max.outlet(audioFolder + "/" + voiceBankName + "_" + voiceBankIndex + ".wav");
            voiceBankIndex = addMod(voiceBankIndex, 4);
            console.log(voiceBankIndex);
        }

    })

    
    


});

function findFreeVoice(){
    console.log("yes");
}



function addMod(int, lim){

    
    int = int + 1;

    if(int > lim - 1){
        return 0;
    } else {
        return int;
    }

}