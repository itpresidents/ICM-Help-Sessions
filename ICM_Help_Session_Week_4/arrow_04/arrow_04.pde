// X Make an arrow
// X Draw the arrow with variables
// X Move the arrow
// X Draw the arrow with 1 function
// - Move the arrow around on the screen
// - Do something to change the arrow when it's in a certain part of the screen.

int rectX1;
int rectX2;
int rectWidth;
int triangleWidth;

void setup() {
  size(600, 600);
  
  rectX1 = 30;
  rectX2 = 300;
  rectWidth = 90;
  triangleWidth = 50;
}

void draw() {
  background(255);

  rectX1 = moveArrow(rectX1, rectWidth + triangleWidth);
  // int xPos, int yPos, int rectWidth, int rectHeight, int triangleWidth, int redness
  drawArrow(rectX1, 30, rectWidth, 20, triangleWidth, 128);
  
  rectX2 = moveArrow(rectX2, 90+300);
  drawArrow(rectX2, 120, 90, 60, 300, 255);
}

int moveArrow(int xVal, int arrowLength) {
  xVal++;

  if(xVal > width) {
    xVal = 0 - arrowLength;
  }

  return xVal;
}

// Draw the arrow with a rectangle and a triangle
void drawArrow(int xPos, int yPos, int rectWidth, int rectHeight, int triangleWidth, int redness) {
  fill(redness, 0, 0);
  rect(xPos, yPos, rectWidth, rectHeight);
  triangle(
    xPos + rectWidth, yPos - 10,
    xPos + rectWidth, yPos + rectHeight + 10,
    xPos + rectWidth + triangleWidth, yPos + rectHeight / 2
  );
}
