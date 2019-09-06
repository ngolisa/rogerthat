

var ProgressBar = require('progressbar.js')
var line = new ProgressBar.Line('#score_bar');

const motion = document.querySelector('#motion');
const contextMotion = motion.getContext('2d');
const video = document.querySelector('#video-motion');
const canvasTeacher = document.querySelector('#motion-teacher');
const contextTeacher = canvasTeacher.getContext('2d');
const videoTeacher = document.querySelector('#video-motion-teacher');
const minl = 20;
const maxl= 90;
const mins = 20;
const maxs = 90;


const canvas1 = document.querySelector('#canvas1');
const contextCanvas1 = canvas1.getContext('2d');
const canvas2 = document.querySelector('#canvas2');
const contextCanvas2 = canvas2.getContext('2d');

const huec = document.querySelector('#hue-c');
const tolc = document.querySelector('#tolerences-c');

contextCanvas1.globalCompositeOperation = "source-over";
contextCanvas2.globalCompositeOperation = "xor";

let chunks = [];
let recorder;
const constraints = {
  audio: false,
  video: {width: 400, height: 320}
}

function extract(data) {
  const min = huec.value - tolc.value;
  const max = huec.value + tolc.value;
  for (let i = 0; i < data.length; i += 4){
    const red = data[i + 0];
    const green = data[i + 1];
    const blue = data[i + 2];
    const object = RGBToHSL(red, green, blue);
    if ((object.h > min) && (object.h < max)
      && (object.l > minl) && (object.l < maxl)
      && (object.s > mins) && (object.s < maxs) ){
      data[i] = 65;
    data[i+1] =255;
    data[i+2] = 38;
  } else {
    data[i+3] = 0;
  }
}
return data;
}

  // function RGBToH(r,g,b) {
  //  // Make r, g, and b fractions of 1
  //  r /= 255;
  //  g /= 255;
  //  b /= 255;

  //  // Find greatest and smallest channel values
  //  let cmin = Math.min(r,g,b),
  //      cmax = Math.max(r,g,b),
  //      delta = cmax - cmin,
  //      h = 0,
  //      s = 0,
  //      l = 0;

  //  // Calculate hue
  //  // No difference
  //  if (delta == 0)
  //    h = 0;
  //  // Red is max
  //  else if (cmax == r)
  //    h = ((g - b) / delta) % 6;
  //  // Green is max
  //  else if (cmax == g)
  //    h = (b - r) / delta + 2;
  //  // Blue is max
  //  else
  //    h = (r - g) / delta + 4;

  //  h = Math.round(h * 60);

  //  // Make negative hues positive behind 360°
  //  if (h < 0)
  //      h += 360;
  //  return h;
  // }

  function RGBToHSL(r,g,b) {
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
    if (h < 0){
      h += 360;
    }

    // Calculate lightness
    l = (cmax + cmin) / 2;

    // Calculate saturation
    s = delta == 0 ? 0 : delta / (1 - Math.abs(2 * l - 1));

    // Multiply l and s by 100
    s = +(s * 100).toFixed(1);
    l = +(l * 100).toFixed(1);

    return {h, s, l};
  }


  function copy() {
    contextMotion.drawImage(video, 0, 0, 400, 320);
    let pixels = contextMotion.getImageData(0, 0, 400, 320);
    const e = extract(pixels.data);
    const i = new ImageData(e, 400, 320)
    contextMotion.putImageData(i, 0, 0);

    contextTeacher.drawImage(videoTeacher, 0, 0, 400, 320);
    let pixelsT = contextTeacher.getImageData(0, 0, 400, 320);
    const eT = extract(pixelsT.data);
    const iT = new ImageData(eT, 400, 320)
    contextTeacher.putImageData(iT, 0, 0);

    contextCanvas1.clearRect(0, 0, 400, 320);
    contextCanvas1.drawImage(video, 0, 0, 400, 320);
    contextCanvas1.drawImage(canvasTeacher, 0, 0, 400, 320);

    contextCanvas2.clearRect(0, 0, 400, 320);
    contextCanvas2.drawImage(motion, 0, 0, 400, 320);
    contextCanvas2.drawImage(canvasTeacher, 0, 0, 400, 320);

    calcul(contextTeacher.getImageData(0,0,400,320), contextMotion.getImageData(0,0,400,320));
    setTimeout(function() {
      copy();
      // huecfunction();
    }, 50);
  };


  function initMotionCapture() {
    video.addEventListener('canplay', copy);
    navigator.mediaDevices.getUserMedia(constraints)
    .then((stream)=>{
      video.srcObject = stream;
    })
  }




  const clickPlay = document.querySelector('.play');
  clickPlay.addEventListener('click', initMotionCapture);


  function startRecord(){
    navigator.mediaDevices.getUserMedia(constraints)
    .then((stream)=>{
      chunks = [];
      recorder = new MediaRecorder(stream,{
        mineType: 'video/webm'})
      videoTeacher.srcObject = stream;

      recorder.addEventListener('dataavailable', onDataavailable);
      recorder.addEventListener('stop', onStop)
      recorder.start();
    })


  };

  function onDataavailable(event){
    chunks.push(event.data)

  };

  function onStop(event){

    videoTeacher.srcObject.getTracks().forEach(track => track.stop());
    videoTeacher.srcObject = null;

    const blob = new Blob(chunks, {'type' : 'video/webm'});
    videoTeacher.src = URL.createObjectURL(blob);
    videoTeacher.play();


  };


  const progress = (score) => {
    var bar = new ProgressBar.Circle(score_bar, {
      number: score,
      color: '#727272',
        // This has to be the same size as the maximum width to
        // prevent clipping
        strokeWidth: 4,
        trailWidth: 1,
        easing: 'linear',
        duration: 0.1,
        text: {
          autoStyleContainer: true
        },
        from: { color: '#E80909', width: 1 },
        to: { color: '#09E85E', width: 4 },

        // Set default step function for all animate calls
        step: function(state, circle) {
          circle.path.setAttribute('stroke', state.color);
          circle.path.setAttribute('stroke-width', state.width);
          var value = score;
          if (value <= 0) {
            circle.setText(0);
          } else if (value > 100) {
            circle.setText(100)
          } else {
            circle.setText(value);
          }

        }
      });
    bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
    bar.text.style.fontSize = '2rem';


    const res = (score) => {
      if (score > 100) {
        return 1
      } else if (score < 0) {
        return 0
      } else {
        return score/100
      }
    };

      bar.animate(res(score));  // Number from 0.0 to 1.0

    };



    function emoji(score){
      if(score<80){
        return '😢'
      } else {
        return '👍'
      }
    }

    function calcul(teacherData, studentData){

      let top = 0;
      let score = 0;
      const data = teacherData.data;
      const data2 = studentData.data;
      for (let i = 0; i < data.length; i += 4){
        if(data[i+3] !== 0){
          top += 1;
          if((data2[i+3] !== 0)){
            score += 1;
          }
        }
      }


      score = Math.round((score*100)/top);

      s = document.querySelector('.score')
      s = document.querySelector('.score')
      s.innerText = ''
      progress(score);
      return score;
    };

    const huecfunction = () => {
      const huec = document.querySelector('#hue-c');
      const tolc = document.querySelector('#tolerences-c');
  // console.log(huec.value)
  // console.log(tolc.value)
};





const record = document.querySelector('.record');
record.addEventListener('click',startRecord);


function stopRecord(){
  recorder.stop();
};
const stop = document.querySelector('.stop')
stop.addEventListener('click',stopRecord);





