  const motion = document.querySelector('#motion');
  const contextMotion = motion.getContext('2d');
  const video = document.querySelector('#video-motion');
  const canvasTeacher = document.querySelector('#motion-teacher');
  const contextTeacher = canvasTeacher.getContext('2d');
  const videoTeacher = document.querySelector('#video-motion-teacher');

  const canvas1 = document.querySelector('#canvas1');
  const contextCanvas1 = canvas1.getContext('2d');
  const canvas2 = document.querySelector('#canvas2');
  const contextCanvas2 = canvas2.getContext('2d');

  const huec = document.querySelector('#hue-c');
  const tolc = document.querySelector('#tolerences-c');

  contextCanvas1.globalCompositeOperation = "multiply";
  contextCanvas2.globalCompositeOperation = "xor";

  let chunks = [];
  let recorder;
  const constraints = {
    audio: false,
    video: {width: 240, height: 180}
  }

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
    const e = extract(pixels.data);
    const i = new ImageData(e, 240, 180)
    contextMotion.putImageData(i, 0, 0);

    contextTeacher.drawImage(videoTeacher, 0, 0, 240, 180);
    let pixelsT = contextTeacher.getImageData(0, 0, 240, 180);
    const eT = extract(pixelsT.data);
    const iT = new ImageData(eT, 240, 180)
    contextTeacher.putImageData(iT, 0, 0);

    contextCanvas1.clearRect(0, 0, 240, 180);
    contextCanvas1.drawImage(video, 0, 0, 240, 180);
    contextCanvas1.drawImage(canvasTeacher, 0, 0, 240, 180);

    contextCanvas2.clearRect(0, 0, 240, 180);
    contextCanvas2.drawImage(motion, 0, 0, 240, 180);
    contextCanvas2.drawImage(canvasTeacher, 0, 0, 240, 180);

    calcul(contextCanvas2.getImageData(0,0,240,180));
    setTimeout(function() {
      copy()
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

function emoji(score){
  if (score > 70){
    return "👍"
  } else {
    return "😢"
  }
}

function calcul(imagedata){

  let score = 0;
  const data = imagedata.data
  for (let i = 0; i < data.length; i += 4){
    if (data[i+3] === 0) {
      score += 1
    }
  }
  s = document.querySelector('.score')
  score = Math.round((score/(data.length/4))*100);
  s.innerText = emoji(score);
  return score;
};





const record = document.querySelector('.record');
record.addEventListener('click',startRecord);


function stopRecord(){
  recorder.stop();
};
const stop = document.querySelector('.stop')
stop.addEventListener('click',stopRecord);





