class Lazer{
  // member variables
  int x,y;
  color c;
  int speed,rad;
  
  //Constructor
  Lazer(int x, int y) {
    this.x=x;
    this.y=y;
    c = #FEFF03;
    speed = 5;
    rad = 2;
  }
  
  //Member methods
  void fire() {
    y-=speed;
  }
  
  boolean reachTop() {
    if (y<-3){
      return true;
    }else{
      return false;
    }
  }
  
  
  void display() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x,y,rad,rad+4);
    
    
  }
  
}
