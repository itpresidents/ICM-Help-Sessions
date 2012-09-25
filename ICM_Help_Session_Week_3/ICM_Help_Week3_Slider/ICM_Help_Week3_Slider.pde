//Center of the circle (aka Slider Button)
float circleX, circleY;
// Width and Height of the Circle as represented by Diameter
float diameter = 50;
float radius = diameter/2;

// Slider attributes
int sliderY, sliderHeight, sliderLeft, sliderRight, sliderWidth;

void setup() {
  size(400, 400);
  
  
  sliderY = 50;
  sliderHeight = 10;

  circleX = width/2;
  circleY = sliderY + sliderHeight/2;
  
  // Start the slider 50 pixels in from the left-hand side
  // End the slider 50 pixels in from the right-hand side
  sliderLeft = 50;
  sliderWidth = width - 2*sliderLeft;
  sliderRight = sliderLeft + sliderWidth;
}

void draw() {
 background(255);
 
  // Draw the line of the slider
 fill(200, 200, 200, 255); 
 rect(50, sliderY, sliderWidth, sliderHeight);  

 stroke(0);
 fill(255, 255, 255, 0);
 
 // Make the slider button's x-location follow the mouse
 circleX = mouseX;

 // Constrain the slider button so it doesn't fall off the ends of the slider
 // Take the width of the slider button into consideration 
 float leftCircleX = sliderLeft + radius;
 float rightCircleX = sliderRight - radius; 
 
 // Constrain the X-Position of the slider button
 circleX = constrain(circleX, leftCircleX, rightCircleX);
 
 //Draw the slider button
 ellipse(circleX, circleY, diameter, diameter);
 line(circleX, circleY-radius, circleX, circleY+radius); 
 line(circleX-radius, circleY, circleX+radius, circleY); 
 ellipse(circleX, circleY, radius/2, radius/2); 
 
}

// Behind the scenes, this is what the constrain function is doing
float constrainBehindTheScenes(float whatamIconstraining, float bottomEnd, float topEnd) {
  
  if(whatamIconstraining < bottomEnd) {
    whatamIconstraining = bottomEnd;
  }
  
  if (whatamIconstraining > topEnd) {  
    whatamIconstraining = topEnd;
  }  
  
  return whatamIconstraining;
}
