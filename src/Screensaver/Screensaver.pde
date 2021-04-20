float x, y, strokeW, pointCount;

void setup() {
  size(500, 500);
  x = random(width);
  y = random(height);
}

void draw() {
  strokeW = random(1, 5);
  pointCount = random(2, 15);
  if (x > width || x < 0 || y > height ||y < 0) {
    x = random(width);
    y = random(height);
  } else {
    if (random(100) > 85) {
      moveUp(x, y, pointCount);
    } else if (random(100)>70) {
      moveRight(x, y, pointCount);
    }else if (random(100)>65) {
      moveDown(x, y, pointCount);
    }else if (random(100)>60) {
      moveLeft(x, y, pointCount);
    }
  }
}

void moveRight(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX+i, startY);
    x = startX+i;
  }
}

void moveLeft(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX-i, startY);
    x = startX-i;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX, startY-i);
    y = startY-i;
  }
}

void moveDown(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX, startY+i);
    y = startY+i;
  }
}
