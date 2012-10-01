// X Make an arrow
// - Draw the arrow with 1 function
// - Move the arrow around on the screen
// - Do something to change the arrow when it's in a certain part of the screen.

void setup() {
  size(600, 600);  
}

void draw() {
  background(255);
  
  // Draw the arrow with a rectangle and a triangle
  fill(0);
  rect(30, 30, 90, 15);
  triangle(120, 20, 120, 55, 170, 38);
}
