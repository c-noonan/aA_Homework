
document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById('myCanvas');
  canvasEl.width = 800;
  canvasEl.height = 200;

  const ctx = canvasEl.getContext('2d');

  ctx.fillStyle = 'red';
  ctx.fillRect(0, 0, 500, 500);
  ctx.beginPath();
  ctx.arc(400, 100, 80, 10, 2*Math.PI, true);
  ctx.strokeStyle = 'blue';
  ctx.lineWidth = 20;
  ctx.stroke();
  ctx.fillStyle = 'green';
  ctx.fill();
});
