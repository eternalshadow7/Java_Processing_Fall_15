//jcamingu
//cmps 5J
//pa5

//global variable declaration

int i, j, ncolumn, nrow;
float x, y, w, h;


void setup() {
  ncolumn = 25;  
  nrow = 25;  
  x = y = 0;
  w = width/int(ncolumn);
  h = height/int(nrow);
  size(500, 500);
  background(255);

  for ( i=0; i<ncolumn; i++) {
    for ( j=0; j<nrow; j++) {

      rect(x+w*i, y+h*j, w, h);
    }
  }
}



void draw() {


  if (mousePressed) 
  {
    for ( i=0; i<ncolumn; i++) {
      for ( j=0; j<nrow; j++) {
        if (mouseInBox(i, j))



          drawPattern(mouseX, mouseY);
      }
    }
  }
}


void keyPressed() {
  for ( i=0; i<ncolumn; i++) {
    for ( j=0; j<nrow; j++) {
      fill(255);  
      stroke(0);
      rect(x+w*i, y+h*j, w, h);
    }
  }
}
boolean mouseInBox(int i, int j)
{
  if ((mouseX > i*20) && (mouseX < (i+1)*20) && (mouseY > j*20) && (mouseY < (j+1)*20))
  {
    return true;
  } else {
    return false;
  }
}
void drawPattern(int i, int j) {
  i= (mouseX/20) % mouseX*20;
  j= (mouseY/20) % mouseY*20;

  fill(0);
  rect(i, j, 20, 20);
  rect(i+20, j+20, 20, 20);
  rect(i+20, j-20, 20, 20);
  rect(i-20, j+20, 20, 20);
  rect(i-20, j-20, 20, 20);
}