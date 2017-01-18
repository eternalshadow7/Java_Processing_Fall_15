//jcamingu
//cmps 5j
//pa8
//MovingTriangle
int x1 = 0;  
int x2 =400;
int x3 = 0;
int y1 = 0;
int y2 = 400;
int y3 = 400;
boolean mouseOn= false;
int speed = 3;
int state = 1;



void setup() {
  size(400, 400);
}

void draw() {
  background(0, 255, 0);
  stroke(0);
  fill(255, 0, 255);
  triangle (x1, y1, x2, y2, x3, y3);

  display();
  if (mousePressed) {

    mousepressed();
    if (mouseOn) {
      speed = 0;
    } else if (!mouseOn) {
      speed = 3;
    }
  }
}

void display() {

  if (state ==1) {        // moving left to right
    x1 += speed;

    if (x1 > 400) { 

      x1=400;

      state = 2;
    }
  } else if (state == 2) { 
    y3 -= speed;
    if (y3<0) {
      y3=0;
      state = 3;
    }
  } else if (state == 3) { 
    x2-= speed;
    if (x2< 0) {
      x2=0;
      state = 4;
    }
  } else if (state == 4) { 
    y1 += speed;
    if (y1 > 400) {
      y1 = 400;
      state = 5;
    }
  } else if (state == 5) {
    x3+= speed;
    if (x3 > 400) {
      x3= 400;
      state = 6;
    }
  } else if (state == 6) {
    y2-= speed;
    if (y2 < 0) {
      y2 = 0;
      state=7;
    }
  } else if (state == 7) {
    x1-= speed;
    if (x1 < 0) {
      x1= 0;
      state = 8;
    }
  } else if (state == 8) {
    y3 += speed;
    if (y3 > 400) {
      y3 = 400;
      state = 9;
    }
  } else if (state == 9) {
    x2+= speed;
    if (x2 > 400) {
      x2= 400;
      state = 10;
    }
  } else if (state == 10) {
    y1 -= speed;
    if (y1 < 0) {
      y1 = 0;
      state = 11;
    }
  } else if (state == 11) {
    x3-= speed;
    if (x3 < 0) {
      x3= 0;
      state = 12;
    }
  } else if (state == 12) {
    y2+= speed;
    if (y2 > 400) {
      y2 = 400;
      state = 1;
    }
  }
}
void mousepressed() {
  mouseOn =!mouseOn;
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    speed = 0;
  } else {
    speed = 3;
  }
}
boolean mouseOn() {
  if (mousePressed) {
    mouseOn=!mouseOn;
    return true;
  } else
    return false;
}