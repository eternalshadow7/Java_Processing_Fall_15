// 1450353
// cmps 5j
// pa4

//variable declarations

boolean redOn = false;
boolean blueOn = false;
boolean greenOn = false;
boolean mouseInRed;
boolean mouseInGreen;
boolean mouseInBlue;


void setup() {
  size(500, 500);
  println("black");
}

void draw() {
  int rb = 0;
  int gb = 0;
  int bb = 0;
  if (redOn) { 
    rb = 255;
  }
  if (blueOn) { 
    bb = 255;
  }
  if (greenOn) {
    gb = 255;
  }
  //RED SQUARE
  background(rb, gb, bb);
  stroke(175);
  strokeWeight(12);
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(100, height/2, 100, 100);

  if (redOn) { 
    noFill();
    stroke(0);
    strokeWeight(2);
    rect(100, height/2, 100, 100);
  }

  //GREEN SQUARE
  rectMode(CENTER);
  stroke(175);
  strokeWeight(12);
  fill(0, 255, 0);
  rect(250, height/2, 100, 100);

  if (greenOn) {
    noFill();
    stroke(0);
    strokeWeight(2);
    rect(250, height/2, 100, 100);
  }
  //BLUE SQUARE
  rectMode(CENTER);
  stroke(175);
  strokeWeight(12);
  fill(0, 0, 255);
  rect(400, height/2, 100, 100);

  if (blueOn) {
    noFill(); 
    stroke(0);
    strokeWeight(2);
    rect(400, height/2, 100, 100);
  }


  if (redOn) {
    stroke(0);
    strokeWeight(2);
  }

  if (greenOn) {   
    stroke(0);
    strokeWeight(2);
  }

  if (blueOn) {
    stroke(0);
    strokeWeight(2);
  }
}

void mousePressed() {

  mouseInRed = (mouseX > 56 && mouseX < 144 && mouseY > 206 && mouseY < 294);
  mouseInGreen = (mouseX > 206 && mouseX < 294 && mouseY > 206 && mouseY < 294);
  mouseInBlue = (mouseX > 356 && mouseX < 444 && mouseY > 206 && mouseY < 294);

  if (mouseInRed) {
    redOn = !redOn;
    if (!redOn && !greenOn && !blueOn) {
      println("black");
    } else if (!redOn && !greenOn && blueOn) {
      println("blue");
    } else if (!redOn && greenOn && !blueOn) {
      println("green");
    } else if (!redOn && greenOn && blueOn) {
      println("cyan");
    } else if (redOn && !greenOn && !blueOn) {
      println("red");
    } else if (redOn && !greenOn && blueOn) {
      println("magenta");
    } else if (redOn && greenOn && !blueOn) {
      println("yellow");
    } else if (redOn && greenOn && blueOn) {
      println("white");
    }
  } else if (mouseInGreen) {
    greenOn = !greenOn;
    if (!redOn && !greenOn && !blueOn) {
      println("black");
    } else if (!redOn && !greenOn && blueOn) {
      println("blue");
    } else if (!redOn && greenOn && !blueOn) {
      println("green");
    } else if (!redOn && greenOn && blueOn) {
      println("cyan");
    } else if (redOn && !greenOn && !blueOn) {
      println("red");
    } else if (redOn && !greenOn && blueOn) {
      println("magenta");
    } else if (redOn && greenOn && !blueOn) {
      println("yellow");
    } else if (redOn && greenOn && blueOn) {
      println("white");
    }
  } else if (mouseInBlue) {
    blueOn = !blueOn;
    if (!redOn && !greenOn && !blueOn) {
      println("black");
    } else if (!redOn && !greenOn && blueOn) {
      println("blue");
    } else if (!redOn && greenOn && !blueOn) {
      println("green");
    } else if (!redOn && greenOn && blueOn) {
      println("cyan");
    } else if (redOn && !greenOn && !blueOn) {
      println("red");
    } else if (redOn && !greenOn && blueOn) {
      println("magenta");
    } else if (redOn && greenOn && !blueOn) {
      println("yellow");
    } else if (redOn && greenOn && blueOn) {
      println("white");
    }
  }
}