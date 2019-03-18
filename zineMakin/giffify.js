var getPixels = require('get-pixels')
var GifEncoder = require('gif-encoder');
var gif = new GifEncoder(384, 624);
var file = require('fs').createWriteStream('img.gif');
var pics = ['./prints/0.jpg','./prints/1.jpg', './prints/2.jpg', './prints/3.jpg', './prints/4.jpg', './prints/5.jpg', './prints/6.jpg','./prints/7.jpg', './prints/8.jpg', './prints/9.jpg', './prints/10.jpg'];

gif.pipe(file);
gif.setQuality(20);
gif.setDelay(65);
gif.writeHeader();

var makeGif = function(counter) {
  getPixels('./prints/'+[counter]+'.jpg', function(err, pixels) {
    gif.addFrame(pixels.data);
    gif.read();

        counter ++;
        if (counter == 11) {
          makeGifdown(10);
        } else {
          console.log(counter);
          makeGif(counter);}
  })

}


var makeGifdown = function(counter) {
  getPixels('./prints/'+[counter]+'.jpg', function(err, pixels) {
    gif.addFrame(pixels.data);
    gif.read();

        counter --;
        if (counter == -1) {
          gif.finish();
          Max.post("DONE")
          Max.outlet('done')
        } else {
          console.log(counter);
          makeGifdown(counter);}
  })

}

const path = require('path');
const Max = require('max-api');
makeGif(0);
// Max.addHandler("giff", () => {
// makeGif(0);
// });
