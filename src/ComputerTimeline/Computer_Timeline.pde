// Evan Luo Computer_Timeline
// Sept. 15, 2020
boolean hover = false;

void setup() {
  size(900, 400);
}

void draw() {
  background(175);
  println(hover);
  drawRef();
  histEvent(100, 200, 140, 25, "Model K - 1937", "Made by Georg Stibitz, it was a relay-based calculator and the first binary adder", true);
  histEvent(120, 275, 140, 25, "Z2-1940", "Made by Konrad Zuse, it was an improvement on the earlier Z1", false);
  histEvent(250, 200, 140, 25, "Z3-1941", "Made by Konrad Zuse,it was the first programmable and fully automatic digital computer", true);
  histEvent(270, 275, 140, 25, "Colossus-1944", "Made in the UK, it was used by the allies against the axis in WW2", false);
  histEvent(400, 200, 140, 25, "Z4-1945", "Made by Konrad Zuse,it was the world's first comercial digital computer", true);
  histEvent(420, 275, 140, 25, "E1NIAC-1946", "Made in the US, it was the first programmable computer built in the US", false);
  histEvent(550, 200, 140, 25,  "Manchester Baby-1948", "Made in the UK, it was the world's first electronic stored-computer" ,true);
  histEvent(570, 275, 140, 25,"EDSAC-1949", "Made in the UK, it was one of the first usefully operational electronic digital stored program computer", false);
}

void drawRef() {
  // Title tect
  textSize(32);
  textAlign(CENTER);
  fill(255);
  // Description
  textSize(15);
  text("Historic Computer Systems", width/2, 65);
  text("Describes important computer systems from 1930-1950", width/2, height*0.3);
  text("Hover over a computer description to see details",width/2,height*0.35);
  //Timeline
  stroke(255);
  strokeWeight(5);
  line(100, 250, 700, 250);

  // Descriptive Text
  textSize(12);
  text("Evan Luo| 2020", width/2, 85);
  
  //Start and Stop
  fill(0);
  text("1930",100,height*0.7-10);
  text("1950",700,height*0.6-10);
}

void histEvent(int x, int y, int w, int h, String title, String description, boolean top) {
  // Detect the location of the mouse
  hover = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);

  // Draw a rectangle
  strokeWeight(1);
  if (hover == true) {
    fill(150);
  } else {
    fill(255);
  }
  rect(x, y, w, h, 10);

  // Draw the title of the rectangle
  fill(0);
  textAlign(LEFT);
  text(title, x+5, y+15);
  if (hover == true) {
    text(description, 200, 350);
  }
  // Draw the connecting line
  stroke(0);
  if (top == true) {
    line(x+20, y+25, x+35, y+50);
  } else {
    line(x+20, y, x+35, y-25);
  }
}
