document.addEventListener("DOMContentLoaded", function(){



const canvas = document.getElementById('myCanvas');
canvas.width = 500;
canvas.height = 500;

const ctx = canvas.getContext('2d');
ctx.fillStyle = 'red';

ctx.fillRect(10,10,10,10);

ctx.beginPath();
ctx.arc(75,75,50,0,2 * Math.PI);
ctx.stroke();
ctx.strokeStyle = "green";
ctx.lineWidth = 5;
ctx.stroke();
ctx.fillStyle = "blue";
ctx.fill();


// for (var i = 0; i < 4; i++) {
//   for(var j = 0; j < 3; j++) {
//     ctx.beginPath();
//     var x              = 25 + j * 50;               // x coordinate
//     var y              = 25 + i * 50;               // y coordinate
//     var radius         = 20;                    // Arc radius
//     var startAngle     = 0;                     // Starting point on circle
//     var endAngle       = Math.PI + (Math.PI * j) /2; // End point on circle
//     var anticlockwise  = i % 2 == 1;                // Draw anticlockwise
//
//     ctx.arc(x, y, radius, startAngle, endAngle, anticlockwise);
//
//     if (i > 1) {
//       ctx.fill();
//     } else {
//       ctx.stroke();
//     }
//   }
// }
});
