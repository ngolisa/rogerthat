const motion = document.querySelector('#motion');
const contextMotion = motion.getContext('2d');
const video = document.querySelector('#video-motion')


const huec = document.querySelector('#hue-c')
const tolc = document.querySelector('#tolerences-c')

function extract(data) {
  const min = huec.value - tolc.value;
  const max = huec.value + tolc.value;
  for (let i = 0; i < data.length; i += 4){
    const red = data[i + 0];
    const green = data[i + 1];
    const blue = data[i + 2];
    const hue = RGBToH(red, green, blue);
    if ((hue < min) || (hue > max)){
      data[i+3] = 0;
    }
  }
  return data;
}


function RGBToH(r,g,b) {
 // Make r, g, and b fractions of 1
 r /= 255;
 g /= 255;
 b /= 255;

 // Find greatest and smallest channel values
 let cmin = Math.min(r,g,b),
     cmax = Math.max(r,g,b),
     delta = cmax - cmin,
     h = 0,
     s = 0,
     l = 0;

 // Calculate hue
 // No difference
 if (delta == 0)
   h = 0;
 // Red is max
 else if (cmax == r)
   h = ((g - b) / delta) % 6;
 // Green is max
 else if (cmax == g)
   h = (b - r) / delta + 2;
 // Blue is max
 else
   h = (r - g) / delta + 4;

 h = Math.round(h * 60);

 // Make negative hues positive behind 360°
 if (h < 0)
     h += 360;
 return h;
}


function copy() {
  contextMotion.drawImage(video, 0, 0, 240, 180);
  let pixels = contextMotion.getImageData(0, 0, 240, 180);
  console.log(pixels)
  const e = extract(pixels.data);
  const i = new ImageData(e, 240, 180)
  contextMotion.putImageData(i, 0, 0);
  setTimeout(function() {
    copy()
  }, 50);
}


function initMotionCapture() {
  video.addEventListener('canplay', copy);
  const constraints = {
    audio: false,
    video: {width: 240, height: 180}
  }
  navigator.mediaDevices.getUserMedia(constraints)
    .then((stream)=>{
      video.srcObject = stream;
    })
}




initMotionCapture()
