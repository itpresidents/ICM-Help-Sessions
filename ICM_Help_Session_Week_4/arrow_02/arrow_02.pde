// X Make an arrow
// X Draw the arrow with variables
// - Move the arrow
// - Draw the arrow with 1 function
// - Move the arrow around on the screen
// - Do something to change the arrow when it's in a certain part of the screen.

// 2 variables to hold position of triangle.
int xPos;
int yPos;
int rectWidth;
int rectHeight;

void setup() {
  size(600, 600);
  
  xPos = 30;
  yPos = 30;
  rectWidth = 90;
  rectHeight = 16;
}

void draw() {
  background(255);

  // Draw the arrow with a rectangle and a triangle
  fill(0);
  rect(xPos, yPos, rectWidth, rectHeight);
  triangle(
    xPos + rectWidth, yPos - 10,
    xPos + rectWidth, yPos + rectHeight + 10,
    xPos + rectWidth + 50, yPos + rectHeight / 2
  );
}
