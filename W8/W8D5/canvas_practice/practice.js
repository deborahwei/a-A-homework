document.addEventListener("DOMContentLoaded", function(){
    // Phase 1
    const c = document.getElementById("mycanvas");
    c.width = 500;
    c.height = 500;
    const ctx = c.getContext('2d');

    // Phase 2
    ctx.fillStyle = 'green';
    ctx.fillRect(0, 0, 500, 500);

    // Phase 3
    ctx.beginPath();
    ctx.arc(250, 250, 250, 0, 2 * Math.PI);
    ctx.strokeStyle = 'pink';
    ctx.stroke();
    ctx.lineWidth = 5;
    ctx.fillStyle = 'pink';
    ctx.fill()

    // Phase 4
    ctx.beginPath();
    ctx.moveTo(250, 250);
    ctx.lineTo(280, 250);
    ctx.lineTo(275, 280);
    ctx.fillStyle = 'yellow'
    ctx.fill();
});
