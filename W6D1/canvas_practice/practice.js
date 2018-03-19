document.addEventListener("DOMContentLoaded", function(){

	const canvas = document.getElementById('mycanvas');
	canvas.width = 500;
	canvas.height = 500;


	const ctx = canvas.getContext('2d');
	ctx.fillStyle = 'red';
	ctx.fillRect(0,0,800,50);

	ctx.fillStyle = 'orange';
	ctx.fillRect(0,50,800,50);

	ctx.fillStyle = 'yellow';
	ctx.fillRect(0,100,800,50);

	ctx.fillStyle = 'green';
	ctx.fillRect(0,150,800,50);

	ctx.fillStyle = 'blue';
	ctx.fillRect(0,200,800,50);

	ctx.fillStyle = 'purple';
	ctx.fillRect(0,250,800,50);

	ctx.beginPath();
    ctx.moveTo(75, 40);
    ctx.bezierCurveTo(75, 37, 70, 25, 50, 25);
    ctx.bezierCurveTo(20, 25, 20, 62.5, 20, 62.5);
    ctx.bezierCurveTo(20, 80, 40, 102, 75, 120);
    ctx.bezierCurveTo(110, 102, 130, 80, 130, 62.5);
    ctx.bezierCurveTo(130, 62.5, 130, 25, 100, 25);
    ctx.bezierCurveTo(85, 25, 75, 37, 75, 40);
    ctx.fillStyle = 'black';
    ctx.fill();

    ctx.beginPath();
    ctx.moveTo(75, 40);
    ctx.bezierCurveTo(75, 37, 70, 25, 50, 25);
    ctx.bezierCurveTo(20, 25, 20, 62.5, 20, 62.5);
    ctx.bezierCurveTo(20, 80, 40, 102, 75, 120);
    ctx.bezierCurveTo(110, 102, 130, 80, 130, 62.5);
    ctx.bezierCurveTo(130, 62.5, 130, 25, 100, 25);
    ctx.bezierCurveTo(85, 25, 75, 37, 75, 40);
    ctx.fillStyle = 'black';
    ctx.fill();


	// ctx.beginPath();
	// ctx.arc(100, 100, 40, 0, 2 * Math.PI, true);
	// ctx.strokeStyle = "blue";
	// ctx.linewidth = 10;
	// ctx.stroke()
	// ctx.fillStyle = "green";
	// ctx.fill();

	// ctx.beginPath();
	// ctx.arc(200, 200, 40, 0, 2 * Math.PI, true);
	// ctx.strokeStyle = "blue";
	// ctx.linewidth = 10;
	// ctx.stroke()
	// ctx.fillStyle = "green";
	// ctx.fill();



});
