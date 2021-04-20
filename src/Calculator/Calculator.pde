/*
2020 Calculator for Programming 1
 Evan Luo | Nov 2020
 */


Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
String dVal;
String op;
boolean left;
float l, r, result;

void setup() {
  size(180, 210);
  dVal = "0";
  op = "";
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
  numButtons[0]= new Button(40, 170, 110, 40, "0", 127, 0, true);
  numButtons[1]= new Button(0, 70, 50, 30, "1", 127, 0, true);
  numButtons[2]= new Button(50, 70, 50, 30, "2", 127, 0, true);
  numButtons[3]= new Button(100, 70, 50, 30, "3", 127, 0, true);
  numButtons[4]= new Button(0, 100, 50, 30, "4", 127, 0, true);
  numButtons[5]= new Button(50, 100, 50, 30, "5", 127, 0, true);
  numButtons[6]= new Button(100, 100, 50, 30, "6", 127, 0, true);
  numButtons[7]= new Button(0, 130, 50, 40, "7", 127, 0, true);
  numButtons[8]= new Button(50, 130, 50, 40, "8", 127, 0, true);
  numButtons[9]= new Button(100, 130, 50, 40, "9", 127, 0, true);
  opButtons[0]= new Button(0, 40, 30, 30, "C", #F76102, 0, false);
  opButtons[1]= new Button(30, 40, 30, 30, "||", 127, 0, false);
  opButtons[2]= new Button(60, 40, 30, 30, "ln", 127, 0, false);
  opButtons[3]= new Button(90, 40, 30, 30, "x²", 127, 0, false);
  opButtons[4]= new Button(120, 40, 30, 30, "√", 127, 0, false);
  opButtons[5]= new Button(150, 40, 30, 30, "±", #1BED11, 0, false);
  opButtons[6]= new Button(150, 70, 30, 30, "-", #1BED11, 0, false);
  opButtons[7]= new Button(150, 100, 30, 30, "+", #1BED11, 0, false);
  opButtons[8]= new Button(150, 130, 30, 30, "x", #1BED11, 0, false);
  opButtons[9]= new Button(150, 160, 30, 30, "÷", #1BED11, 0, false);
  opButtons[10]= new Button(150, 190, 30, 20, "=", #F20C10, 0, false);
  opButtons[11]= new Button(0, 170, 40, 40, ".", #0C19F2, 0, false);
}

void draw() {
  background(255);
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }

  for (int i = 0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed () {
  for (int i = 0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length() < 15) {
      handleEvent(numButtons[i].val, true);
    }
  }

  for (int i = 0; i<opButtons.length; i++) {
    if (opButtons[i].hover) {
      handleEvent(opButtons[i].val, false);
    }


    println("L:" + l + " R:" + r + " Op:" + op);
    println("Result:" + result + " Left:" + left);
  }
}
void updateDisplay() {
  fill(127);
  rect(0, 0, 180, 40);
  fill(255);

  //Scaling
  if (dVal.length()<8) {
    textSize(14);
  } else if (dVal.length()<9) {
    textSize(13);
  } else if (dVal.length()<10) {
    textSize(12);
  } else if (dVal.length()<11) {
    textSize(11);
  } else if (dVal.length()<12) {
    textSize(10);
  } else if (dVal.length()<13) {
    textSize(9);
  } else if (dVal.length()<14) {
    textSize(8);
  } else {
    textSize(7);
  }
  text(dVal, width-40, 30);
}

void keyPressed() {
  println("Key:" + key + " key Code:" + keyCode);
  if (key == '0') {
    handleEvent("0", true);
  } else if (key == '1') {
    handleEvent("1", true);
  } else if (key == '2') {
    handleEvent("2", true);
  } else if (key == '3') {
    handleEvent("3", true);
  } else if (key == '4') {
    handleEvent("4", true);
  } else if (key == '5') {
    handleEvent("5", true);
  } else if (key == '6') {
    handleEvent("6", true);
  } else if (key == '7') {
    handleEvent("7", true);
  } else if (key == '8') {
    handleEvent("8", true);
  } else if (key == '9') {
    handleEvent("9", true);
  } else if (key == '+') {
    handleEvent("+", false);
  } else if (key == '-') {
    handleEvent("-", false);
  } else if (key == '*') {
    handleEvent("x", false);
  } else if (key == '/') {
    handleEvent("÷", false);
  } else if (key == '|') {
    handleEvent("||", false);
  } else if (key == '=') {
    handleEvent("=", false);
  } else if (key == '.') {
    handleEvent(".", false);
  }else if (keyCode == 10) {
    handleEvent("=", false);
  }
}

String handleEvent(String val, boolean num) {
  if (left && num) {
    if (dVal.equals("0")) {
      dVal = val;
      l = float(dVal);
    } else {
      dVal += val;
      l = float(dVal);
    }
  } else if (!left && num) {
    if (dVal.equals("0")) {
      dVal = val;
      r = float(dVal);
    } else {
      dVal += val;
      r = float(dVal);
    }
  } else if (val.equals("C")) {// clear button
    dVal = "0";
    op = "";
    left = true;
    l = 0.0;
    r = 0.0;
    result = 0.0;
  } else if (val.equals("+")) {
    if (left) {
      op = "+";
      left = false;
      dVal = "0";
    } else { 
      preformCalc();
    }
  } else if (val.equals("-")) {
    if (left) {
      op = "-";
      left = false;
      dVal = "0";
    } else { 
      preformCalc();
    }
  } else if (val.equals("x")) {
    if (left) {
      op = "x";
      left = false;
      dVal = "0";
    } else { 
      preformCalc();
    }
  } else if (val.equals("÷")) {
    if (left) {
      op = "÷";
      left = false;
      dVal = "0";
    } else { 
      preformCalc();
    }
  } else if (val.equals("=")) {
    preformCalc();
  } else if (val.equals("||")) {
    if (left) {
      l = abs(l);
      dVal = str(l);
    } else { 
      r = abs(r);
      dVal = str(r);
    }
  } else if (val.equals("±")) {
    if (left) {
      l *= -1;
      dVal = str(l);
    } else {
      r *= -1;
      dVal = str(r);
    }
  }else if (val.equals(".") && !dVal.contains(".")) {
    dVal += (val);
  }else if (val.equals("ln")) {
    if (left) {
      l = log(l);
      dVal = str(l);
    } else {
      r = log(r);
      dVal = str(r);
    }
  }else if (val.equals("x²")) {
    if (left) {
      l = sq(l);
      dVal = str(l);
    } else {
      r = sq(r);
      dVal = str(r);
    }
  }else if (val.equals("√")) {
    if (left) {
      l = sqrt(l);
      dVal = str(l);
    } else {
      r = sqrt(r);
      dVal = str(r);
    }
  }

  return val;
}

void preformCalc () {
  if (op.equals("+")) {
    result = l+r;
  } else if (op.equals("-")) {
    result = l-r;
  } else if (op.equals("x")) {
    result = l*r;
  } else if (op.equals("÷")) {
    result = l/r;
  }


  l = result;
  dVal = str(result);
  left = true;
}
