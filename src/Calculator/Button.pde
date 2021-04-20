class Button {
  // Member Variables
  int x,y,w,h;
  String val;
  color c1,c2;
  boolean hover;
  
  // Constructor
  Button (int tempX, int tempY, int tempW, int tempH, String tempVal) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    val = tempVal;
    c1 = #00FFB0;
    c2 = #3FA585;
    hover = false;
  }
  
  // Method for display
  void display() {
    if (hover){
      fill(c2);
    }else{
      fill(c1);
    }
    rect(x,y,w,h,8);
    fill(0);
    textAlign(CENTER);
    text(val,x+w/2,y+h/2);
  }
  
  //Method for mouse interaction
  void hover() {
    hover = mouseX > x && mouseX < w+x && mouseY > y && mouseY < h+y;
  }
}
