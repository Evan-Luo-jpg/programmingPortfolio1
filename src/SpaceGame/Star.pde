class Star{
  // member variables
  int x,y, speed, dia;
  color c;
  
  
  //Constructor
  Star(int x, int y) {
    this.x=x;
    this.y=y;
    speed = int(random(1,7));
    dia = int(random(1,4));
    c = color(random(200,255));
}
  
  //Member methods
  void display() {
    fill(c);
    noStroke();
    ellipse(x,y,dia,dia);
    
    
  }
  
  boolean reachBottom() {
    if (y>height){
      return true;
    }else{
      return false;
    }
  }
  
  void move() {
    y+= speed;
  }
  
}
