const path = require('path');
const Max = require('max-api');

const accountSid = 'AC3c7581b4479ee84f0bb32c5a5481499c';
const authToken = 'fdc314d6ee7e63af5032844a82b0b064';

Max.post("Texting ready");
// require the Twilio module and create a REST client
const Tclient = require('twilio')(accountSid, authToken);


Max.addHandler("refill", () => {

textMessage("So many poems have been made! We should refill the paper soon.");
});

Max.addHandler("alert", (msg) => {

textMessage(msg);
});

function textMessage(msg){
Tclient.messages
  .create({
    to: "+16263999945",
    from: '+14243486004',
    body: msg,
  })
   Tclient.messages
    .create({
       to: "+17175032678",
      from: '+14243486004',
       body: msg,
   })
  .then((message) => console.log(message.sid));

}
