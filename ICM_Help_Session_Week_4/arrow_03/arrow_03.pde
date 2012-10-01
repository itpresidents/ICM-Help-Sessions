// X Make an arrow
// X Draw the arrow with variables
// X Move the arrow
// X Draw the arrow with 1 function
// - Move the arrow around on the screen
// - Do something to change the arrow when it's in a certain part of the screen.

int rectX;
int rectWidth;
int triangleWidth;

void setup() {
  size(600, 600);
  
  rectX = 30;
  rectWidth = 90;
  triangleWidth = 50;
}

void draw() {
  background(255);

  rectX = moveArrow(rectX);
  // int xPos, int yPos, int rectWidth, int rectHeight, int triangleWidth
  drawArrow(rectX, 30, rectWidth, 20, triangleWidth);
  
  drawArrow(rectX, 120, 90, 60, 300);
}

int moveArrow(int xVal) {
  println("xVal=" + xVal);
  
  xVal++;

  if(xVal > width) {
    xVal = 0 - rectWidth - triangleWidth;
  }

  return xVal;
}

// Draw the arrow with a rectangle and a triangle
void drawArrow(int xPos, int yPos, int rectWidth, int rectHeight, int triangleWidth) {
  fill(0);
  rect(xPos, yPos, rectWidth, rectHeight);
  triangle(
    xPos + rectWidth, yPos - 10,
    xPos + rectWidth, yPos + rectHeight + 10,
    xPos + rectWidth + triangleWidth, yPos + rectHeight / 2
  );
}
