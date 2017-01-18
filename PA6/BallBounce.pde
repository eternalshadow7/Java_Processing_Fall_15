//-----------------------------------------------------------------
//jcamingu
// BallBounce
// cmps 5J
// programming assignment 6
//-----------------------------------------------------------------
// ball variables
float R, X, Y, Xspeed, Yspeed;
// environment variables
float gravity, stopSpeed, dissipation;
void setup() {
  size(500, 500);
  ellipseMode(RADIUS);
  smooth();
  // initialize ball variables
  R = 50;
  X = width/2;
  Y = R;
  Xspeed = 0;
  Yspeed = 0;

  // initialize environment variables
  gravity = 0.6;
  stopSpeed = 0.2;
  dissipation = .08;
}
// do not change this function
void draw() {
  background(0, 255, 255);
  displayBall();
  if ( mousePressed && mouseOnBall() ) {
    holdBall();
  } else {
    moveBall();
    updateSpeed();
  }
}
void displayBall() {
  Y = constrain(Y, R, height-R);
  X = constrain(X, R, width-R);
  fill(255, 0, 0);
  noStroke();
  ellipse(X, Y, R, R);

  // your code goes here
}
void holdBall() {
  X = mouseX;
  Y = mouseY;
   
  if ((dist(width-R, height-R, mouseX, mouseY) <= X)) {
    Yspeed += gravity;}
  if(( dist(width-R, height-R, mouseX, mouseY) >=Y)){
     Xspeed += gravity;
  }
}
// your code goes here

void moveBall() {
  X += Xspeed;
  Y += Yspeed;
  // your code goes here
}
void updateSpeed() {
  if (abs(Xspeed) < stopSpeed) {
    Xspeed = 0.0;
  } else if ( X >= width-R) {
    Xspeed *= -(1-dissipation);
  }
  if (X <= R) {
    Xspeed = abs(Xspeed);
  }
  if (abs(Yspeed) < stopSpeed) {
    Yspeed = 0.0;
  } else if ( Y >= height-R) {
    Yspeed *= -(1-dissipation);
  }
  if (Y <= R) {
    Yspeed = abs(Yspeed);
  }
  Yspeed += gravity;

  // your code goes here
}
boolean mouseOnBall() {

  if (mouseX > X-R && mouseX < X+R && mouseY > Y-R && mouseY < Y+R) {
    return true;
  }
  return false;
  // your code goes here
}