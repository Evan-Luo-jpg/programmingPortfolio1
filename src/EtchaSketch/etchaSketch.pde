// Global Variable
int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 10;
  y = 10;
}

void draw () {
  fill(0);
  strokeWeight(3);
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      moveRight(5);
    } else if (key == 'a' || key == 'A') {
      moveLeft(5);
    } else if (key == 'w' || key == 'W') {
      moveUp(5);
    } else if (key == 's' || key == 'S') {
      moveDown(5);
    }
  }
  //moveRight(50);
  //moveDown(100);
  //moveRight(50);
  //moveUp(100);
  //moveDown(100);
  //moveRight(50);
  //moveUp(100);
  //moveDown(100);
  //moveRight(100);
  //moveUp(50);
  //moveLeft(50);
  //moveDown(50);
  //noLoop();
}

void mousePressed() {
  saveFrame("line-#######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(5);
    } else if (keyCode == LEFT) {
      moveLeft(5);
    } else if (keyCode == UP) {
      moveUp(5);
    } else if (keyCode == DOWN) {
      moveDown(5);
    }
  }
}

//Method to draw right lines
void moveRight (int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x=x+rep;
}

// Method to draw down lines
void moveDown (int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+rep;
}

//Method to draw up lines
void moveUp (int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-rep;
}

//Method to draw left lines
void moveLeft (int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x=x-rep;
}

//Method to draw Up Left lines
void moveUpleft (int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y-i);
  }
  x=x-rep;
  y=y-rep;
}

//Method to draw Down Left lines
void moveDownleft (int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y+i);
  }
  x=x-rep;
  y=y+rep;
}

//Method to draw Down Right lines
void moveDownright (int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y+i);
  }
  x=x+rep;
  y=y+rep;
}

//Method to draw Up Right lines
void moveUpright (int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y-i);
  }
  x=x+rep;
  y=y-rep;
}
