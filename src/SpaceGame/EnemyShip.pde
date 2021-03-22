class EnemyShip {
  // Member Variables
  int x, y, health;
  char displayMode;
  color c1;



  // Constructor
  EnemyShip(color c1) {
    x = 0;
    y = 0;
    health = 100;
    displayMode ='1';
    this.c1 =c1;
  }




  //Member methods
  void display(int x, int y) {
    if (displayMode == '1') {
      fill(c1);
      stroke(255);
      rect(x-20, y-15, 20, 5);
      rect(x, y-15, 20, 5);
      triangle(x, y+20, x-30, y-10, x+30, y-10);
      ellipse(x, y, 20, 50);
    }
  }
}
