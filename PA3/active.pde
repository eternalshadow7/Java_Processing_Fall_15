/* Janelynn Camingue
   1450353
   cmps 5j
   pa3
*/
//variables
int circleX = 100;
int circleY = 100;
float color1 = 255;
float color2 =0;
int r = int(random(0,255));
int rectY = height+50;

void setup() {
  size(500, 500);
  background(color2);
}

void draw() {

}

void mouseClicked() {
  fill(mouseX, color2, mouseY);
  stroke(color1);
  strokeWeight(2);
  ellipse(mouseX-3, mouseY-3, circleX, circleY);
  
}
  
void mousePressed() {
  println("Weeeeeeee");
}

void keyPressed() {
  background(255, color2, 255);
}

void mouseDragged() {
  stroke(mouseX, color2, mouseY);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void keyReleased() {
  fill(r);
  rectMode(CENTER);
  rect(width/2, height/2, mouseX+1, mouseY+1);
}

void mouseMoved() {
  ellipse(r, r, r, r);
}