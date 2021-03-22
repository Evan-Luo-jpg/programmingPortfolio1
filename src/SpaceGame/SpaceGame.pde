// SpaceGame | December 2020
// by Evan Luo
// TO DO: Placeholders for Level and Score

import processing.sound.*;
SoundFile lazer;

SpaceShip s1;
ArrayList<Lazer> lazers = new ArrayList<Lazer>();
ArrayList<Rock> rocks = new ArrayList<Rock>();
ArrayList<Star> stars;
Timer rockTimer;
int score, pass;
boolean play;

void setup() {
  size(500, 500);
  lazer = new SoundFile(this, "ATAT-SideGuns.wav");
  s1 = new SpaceShip(#0CF5F3);
  stars = new ArrayList();
  lazers = new ArrayList();
  rocks = new ArrayList();
  rockTimer = new Timer(int(random(500, 3000)));
  score = 0;
  pass = 0;
  play = false;
  rockTimer.start();
}


void draw() {
  noCursor();
  //Game Play
  if (!play) {
    startScreen();
  } else {
    background(0);


    stars.add(new Star(int(random(width)), int(random(height))));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachBottom()) {
        stars.remove(star);
      }
    }



    if (rockTimer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -40));
      rockTimer.start();
    }

    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.display();
      rock.move();
      // Rock vs Ship Collision
      if (s1.rockIntersection(rock)) {
        s1.health-=rock.health/2;
        rocks.remove(rock);
        // Add points
        score+=50;
      }
      if (rock.reachBottom()) {
        pass++;
        rocks.remove(rock);
      }
    }

    for (int i = 0; i < lazers.size(); i++) {
      Lazer lazer = lazers.get(i);
      lazer.display();
      lazer.fire();
      // Lazer vs Rock Intersection
      for (int j = 0; j < rocks.size(); j++) {
        // What makes the collision happen
        Rock rock = rocks.get(j);
        if (rock.lazerIntersection(lazer)) {
          if (rock.health<1) {
            rocks.remove(rock);
            lazers.remove(lazer);
            // Add points
            score+=50;
            s1.ammo+=10;
          } else {
            rock.health-=15;
            lazers.remove(lazer);
          }
        }
      }
      if (lazer.reachTop()) {
        lazers.remove(lazer);
      }
    }

    infoPanel();
    s1.display(mouseX, mouseY);

    //GameOver Logic
    if (s1.health<1 || pass>10) {
      play = false;
      gameOver();
    }
  }
}

void mousePressed() {
  if (play) {
    lazer.play();
  }
  if (s1.ammo > 0) {
    lazers.add(new Lazer(s1.x, s1.y));
  }
  s1.ammo--;
}


void infoPanel () {
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(255, 128);
  text("Health:" + s1.health, 40, height-20);
  text("Lives:" + s1.lives, 110, height-20);
  text("Ammo:" + s1.ammo, 190, height-20);
  text("Level:" + 100, 260, height-20);
  text("Score:" + score, 330, height-20);
  if (pass > 7) {
    fill(255, 0, 0);
    text("Pass:" + pass, 400, height-20);
  } else {
    text("Pass:" + pass, 400, height-20);
  }
}


void startScreen() {
  background(0);
  textAlign(CENTER);
  text("Welcome to the Game!", width/2, height/2);
  text("How to Play:", width/2, height/2+30);
  text("Click to Shoot, Avoid the Rocks", width/2, height/2+50);
  text("Don't Let Too many Rocks Past", width/2, height/2+70);
  text("Click to Continue", width/2, height/2 +90);
  if (mousePressed) {
    play = true;
  }
}


void gameOver() {
  background(0);
  textAlign(CENTER);
  text("Game Over!", width/2, height/2);
  text("Final Score:" + score, width/2, height/2+20);
  noLoop();
}
