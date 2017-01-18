
size(500, 500);
background(4, 124, 123);

  
//fish 1

fill(255, 0, 255);
stroke(205);
strokeWeight(4);
ellipseMode(CORNER);
ellipse(100, 60, 130, 90);
triangle(50, 50, 50, 150, 100, 100);

//fish 1 mouth and eyes?
fill(255);
stroke(0);
strokeWeight(2);
ellipse(170, 70, 45, 45);
strokeWeight(3);
fill(133);
ellipse(210, 120, 10, 10);
ellipse(180, 90, 20, 20);

//fish 1 details minus eyes
fill(255, 255, 0);
stroke(205);
strokeWeight(4);
line(160, 60, 200, 10);
line(200, 10, 230, 40);
ellipse(230, 35, 20, 20);

//fish 1 fin
stroke(255);
strokeWeight(2);
noFill();
triangle(150, 100, 150, 120, 130, 110);

//fish 2 fin top
fill(0, 200, 120);
stroke(205);
strokeWeight(4);
triangle(150, 240, 220, 240, 180, 220);

//fish 2 main
fill(0, 255, 0);
stroke(205);
strokeWeight(4);
triangle(250, 275, 310, 220, 310, 345);
ellipse(120, 230, 130, 90);

//fish 2 eyes and mouth
fill(255);
stroke(0);
strokeWeight(2);
ellipse(140, 240, 45, 45);
strokeWeight(3);
fill(0);
ellipse(150, 250, 10, 10);
noFill();
ellipse(130, 290, 10, 10);

//fish 2 fin
stroke(255);
strokeWeight(2);
triangle(200, 280, 200, 300, 210, 285);

//transparent bubbles
fill(194, 252, 252, 0);
ellipse(110, 210, 20, 20);
ellipse(105, 200, 30, 30);
ellipse(120, 150, 50, 50);
ellipse(230, 180, 60, 60);
ellipse(250, 100, 50, 50);
ellipse(210, 170, 10, 10);
ellipse(310, 110, 25, 25);
ellipse(230, 40, 34, 34);
ellipse(140, 10, 21, 21);
ellipse(130, 140, 45, 45);
ellipse(6, 200, 80, 80);
ellipse(10, 10, 35, 35);
ellipse(245, 359, 70, 70);
ellipse(400, 400, 88, 88);
ellipse(470, 355, 13, 13);
ellipse(355, 311, 46, 46);
ellipse(297, 288, 55, 55);
ellipse(355, 100, 44, 44);
ellipse(333, 177, 23, 23);
ellipse(255, 88, 99, 99);
ellipse(266, 99, 120, 120);
ellipse(35, 22, 22, 22);


//transparent rectangles
fill(0, 233, 0, 0);
rectMode(CORNER);
rect(10, 300, 70, 40);
rect(455, 355, 100, 80);
rect(44, 437, 100, 55);
rect(400, 60, 60, 30);

//not transparent rectangles, quads, and ellipses
fill(255, 0, 0);
rect(30, 230, 40, 20);
quad(400, 99, 444, 99, 444, 133, 400, 133);
quad(30, 400, 60, 400, 60, 460, 30, 460);
fill(255, 145, 90);
ellipse(300, 450, 50, 50);
ellipse(300, 400, 30, 30);
ellipse(20, 20, 20, 20);
fill(0, 0, 255);
ellipse(400, 400, 40, 40);
ellipse(355, 44, 20, 20);
ellipse(200, 422, 44, 44);
fill(0, 255, 255);
quad(300, 99, 310, 99, 310, 110, 300, 110);
quad(100, 18, 110, 18, 110, 39, 100, 39);


//transparent quads 
fill(255, 255, 0, 0);
quad(433, 199, 466, 199, 466, 230, 433, 230);
quad(450, 55, 470, 55, 470, 77, 450, 77);

ellipse(width/2, height/2, mouseX+20, mouseY+20);
ellipseMode(CENTER);
ellipse(23, 23, 88, 88);
ellipseMode(RADIUS);
ellipse(450, 250, 50, 50);
ellipseMode(CORNERS);
ellipse(100, 50, 110, 60);

rectMode(CENTER);
rect(80, 20, 20, 30);
rectMode(RADIUS);
rect(400, 430, 10, 10);
rectMode(CORNERS);
rect(400, 410, 420, 450);
ellipse(width/2, height/2, mouseX+10, mouseY+10);