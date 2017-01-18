//CLASS
class Bug {
  color bugColor;
  float x;
  float y;
  float s;
  float state;
  float xspeed;
  float yspeed;
  
  // fields
  // constructor

  Bug(float x, float y, int s) {
    this.x = x;
    this.y = y;
  state = (int) random(1,5);
  
    this.xspeed = random(1, 1.5);
    this.yspeed = random(1, 1.5);
    bugColor = color(random(255), random(255), random(255));
    
  }
  // methods
  void crawl() {
     
 if (state == 1) {
   x += xspeed;}
   else if (state == 2) {
  x += -xspeed;
   }
   else if (state == 3) {
   y += yspeed;}
   else if (state == 4) {
   y += -yspeed;}
   else if (state == 0) {
     yspeed =0;
     xspeed=0;
   }
   
    if(x>width+10) x=-40;
    if(x<-40) x=width+10;
    
    if(y>height+10) y=-40;
    if(y<-40) y=height+10;
    
    
  }
  void display() {
    
    fill(bugColor);
    
   if (state == 1) {
     ellipse(x, y, 30, 20);
     x += xspeed;
     fill(0);
 ellipse(x-10, y+10, 1, 10);
    ellipse(x-10, y-10, 1, 10);
    ellipse(x, y+10, 1, 10);
    ellipse(x, y-10, 1, 10);
    ellipse(x+10, y+10, 1, 10);
    ellipse(x+10, y-10, 1, 10);
     
    } 
  
    else if (state == 2) {
      ellipse(x, y, 30, 20);
      x += -xspeed;
      ellipse(x-10, y+10, 1, 10);
    ellipse(x-10, y-10, 1, 10);
    ellipse(x, y+10, 1, 10);
    ellipse(x, y-10, 1, 10);
    ellipse(x+10, y+10, 1, 10);
    ellipse(x+10, y-10, 1, 10);
      
      
    }else if (state == 3) {
      ellipse(x, y, 20, 30);
      y += yspeed;
      ellipse(x+10, y+10, 10, 1);
    ellipse(x+10, y-10, 10, 1);
    ellipse(x+10, y, 10, 1);
    ellipse(x-10, y, 10, 1);
    ellipse(x-10, y+10, 10, 1);
    ellipse(x-10, y-10, 10, 1);
      
    } else if (state == 4) {
     ellipse(x, y, 20, 30);
      y += -yspeed;
      ellipse(x+10, y+10, 10, 1);
    ellipse(x+10, y-10, 10, 1);
    ellipse(x+10, y, 10, 1);
    ellipse(x-10, y, 10, 1);
    ellipse(x-10, y+10, 10, 1);
    ellipse(x-10, y-10, 10, 1);
    }
        else if (state == 0) {
     yspeed =0;
     xspeed=0;
    
        }
    
    
    
  }
  
  
  void squash() {
    if (mousePressed && mouseOn()) {
 
      state = 0;
      this.yspeed = 0;
      this.xspeed = 0;
    }
  }
  void runAway() {
     if (mousePressed && scared()) {
    this.xspeed *= 1.5;
     this.yspeed *= 1.5;}
  }
  boolean mouseOn() {
  
  
   
    if (mouseX> x-15 && mouseX < x+15 && mouseY > y-10 && mouseY < y+10) {
          return true;
    }
    
       
  return false;
  
  }
  boolean scared() {
  
  if (mouseX > x-30 && mouseX < x+30 && mouseY > y-30 && mouseY < y+30) {
    return true;
    
  }
  return false;
  }
}