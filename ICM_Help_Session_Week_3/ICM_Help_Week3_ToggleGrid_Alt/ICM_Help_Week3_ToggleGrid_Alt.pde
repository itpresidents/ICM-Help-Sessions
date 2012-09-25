//ITP - ICM Fall 2012
//This example shows how to draw a grid of squares 
//that can each be clikced on and off

int cols = 10;
int rows = 10;

int spacing = 50;
int rectWidth = 50;
int rectHeight = 50;

boolean [] thisRectIsOn = new boolean [cols*rows];

void setup() {

  size(500, 500);

  //intialize the array 
  for (int i = 0; i < thisRectIsOn.length; i++) {
    thisRectIsOn[i] = false;
  }
}

void draw() {

  background(0);

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {

      int currentRect = j + i*cols;

      if (thisRectIsOn[currentRect]) {
        fill(255, 0, 0);
      }
      else {
        fill(0, 0, 255);
      }
      rect(i * spacing, j * spacing, rectWidth, rectHeight);
    }
  }
} 


void mousePressed() {

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {

      int currentRect = j + (i * cols);

      if (mouseX > (i*spacing) && mouseX < ((i*spacing) + spacing) && mouseY > (j*spacing) && mouseY < ((j*spacing) + spacing)) {
        thisRectIsOn[currentRect] = !(thisRectIsOn[currentRect]);
      }
    }
  }
}

