const path = require('path');
const Max = require('max-api');



Max.post('hue Script Running')

var hue = require("node-hue-api");
HueApi = hue.HueApi;
lightState = hue.lightState;


var displayResult = function(result) {
    console.log(JSON.stringify(result, null, 2));
};



var Bzhost = "10.32.71.87",
    Bzusername = 'ITskQhand7Q7zpL56KTCg8kqvSY-k5majxL61bvQ',
    api;

api = new HueApi(Bzhost, Bzusername);
state = lightState.create();


///////GENERIC HUE COMMANDS////////


Max.addHandler("off", (  group) => {

  Max.post('OFFFF')
  api.setGroupLightState(group, state.off(), function(err, result) {
  	if (err) throw err;
  	displayResult(result);
  });
  // api.done();
});


Max.addHandler("on", (group) => {
  
  api.setGroupLightState(group, state.on(), function(err, result) {
  	if (err) throw err;
  	displayResult(result);
  });
  // api.done();

});


Max.addHandler("lightChange", ( light, hue, bri, sat, transitiontime) => {
  
  api.setLightState(light, {"hue": hue,"bri":bri,"sat":sat,"transitionTime":transitiontime}, function(err, result) {
  	if (err) throw err;
  	displayResult(result);
  });

  // api.done();
});

Max.addHandler("roomChange", (group, hue, bri, sat, transitiontime) => {
  
  api.setGroupLightState(group, {"hue": hue,"bri":bri,"sat":sat,"transitionTime":transitiontime}, function(err, result) {
  	if (err) throw err;
  	displayResult(result);
  });
  // api.done()

});



Max.addHandler("roomEffect", ( group, theEfect) => {
  api.setGroupLightState(group, state.effect(theEfect), function(err, result) {
  	if (err) throw err;
  	displayResult(result);
  });
  // api.done();
});


Max.addHandler("roomBri", ( group, value) => {
  
  api.setGroupLightState(group, state.bri(value), function(err, result) {
  	if (err) throw err;
  	displayResult(result);
    Max.post('changing room bri')
  });
  // api.done();

});

Max.addHandler("roomSat", ( group, value) => {
  api.setGroupLightState(group, state.sat(value), function(err, result) {
  	if (err) throw err;
  	displayResult(result);
    Max.post('changing room sat')
  });
  // api.done();
});

Max.addHandler("test", (mess) => {
  Max.post('what');
});

Max.addHandler("roomTrans", ( group, value) => {
  api.setGroupLightState(group, state.transitiontime(value), function(err, result) {
  	if (err) throw err;
  	displayResult(result);
  });
  Max.post('changing room transitionTime')
  // api.done();
});


Max.addHandler("roomRGB", (group, r, g, b) => {
  Max.post("setting rgb")
  api.setGroupLightState(group, state.rgb([r, g, b]), function(err, result) {
  	if (err) throw err;
  	displayResult(result);
  });
  // api.done();
});



////////////
