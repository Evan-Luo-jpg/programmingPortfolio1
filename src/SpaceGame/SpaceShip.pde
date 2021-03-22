class SpaceShip {
  // Member Variables
  int x, y, health, ammo, lives, rad;
  char displayMode;
  color c1;



  // Constructor
  SpaceShip(color c1) {
    x = 0;
    y = 0;
    health = 100;
    ammo = 500;
    lives = 3;
    displayMode ='1';
    this.c1 =c1;
    rad = 25;
  }
  
  // Rock vs Ship Collision
  boolean rockIntersection(Rock rock){
    float distance = dist(x,y,rock.x,rock.y);
    if (distance < rad + rock.rad) {
      return true;
    } else {
      return false;
    }
  }




  //Member methods
  void display(int x, int y) {
    this.x =x;
    this.y=y;
    if (displayMode == '1') {
      rectMode(CENTER);
      fill(0, 200, 150);
      stroke(255);
      fill(c1);
      rect(x-20, y+30, 10, 15);
      rect(x+20, y+30, 10, 15);
      strokeWeight(1);
      triangle(x, y-30, x-40, y+10, x+40, y+10);
      triangle(x, y-40, x-15, y-25, x+15, y-25);
      fill(200, 100, 170);
      stroke(0, 255, 0);
      rect(x, y, 30, 50);
    }
  }
}
