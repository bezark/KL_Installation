/*jshint esversion: 6 */
const async = require("async");
const say = require("say");

const path = require('path');

const fs = require("fs");
const {
    exec
} = require('child_process');

const { spawn } = require('child_process');
const Max = require('max-api');

const audioFolder = __dirname + "/audio"


Max.post("Audio Process");
Max.post(audioFolder);
Max.post(path.isAbsolute(audioFolder));

Max.addHandler("say", (string) => {

    let strClean = string.replace(/[^\w\s]/gi, '');

	if(strClean.length > 128) 
		{ 
			strClean = strClean.substring(0,128)
		};

    Max.post('say \"' + strClean +'\" -o audio/test1');


    exec('say \"' + strClean +'\" -o audio/test1', (error, stdout, stderr) => {
        if (error) {
            Max.post(`exec error: ${error}`);
            return;
        }
        Max.post(`stdout: ${stdout}`);
        Max.post(`stderr: ${stderr}`);

        Max.outlet(audioFolder + "/test1.aiff");

    });



});