class Rock{
  // member variables
  int x,y,health,dia,speed,rad;
  color c;
  char displayMode;
  PImage rock;
  
  //Constructor
  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    c = #AAAA9B;
    health = 40;
    displayMode = '1';
    dia = 40;
    speed = int(random(3,7));
    rock = loadImage("Rock-3.png");
    rad = 25;
}

// Lazer vs Rock Intersection
  boolean lazerIntersection(Lazer l){
    float distance = dist(x,y,l.x,l.y);
    if (distance < rad + l.rad+1) {
      return true;
    } else {
      return false;
    }
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
  
  //Member methods
  void display() {
    fill(c);
    image(rock,x,y);
    
    
  }
  
}
