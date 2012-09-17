//Declaring Variables
//GLOBAL!!!
float ballX;
float ballY;
float ballSizeX;
float ballSizeY;
float speedX;
float speedY;
boolean moveBall;

int counter;

//Setup
//Only happens once
void setup() {
  size(400, 400);
  background(0);

  ballX = 20;
  ballY = 20;
  ballSizeX = 100;
  ballSizeY = 100;
  speedX = 5;
  speedY = 10;
  
  counter = 0;
}



//Draw
//Happens over and over and over and over again.
void draw() {
  background(0);
  
  //Count Down from 150
  counter = counter + 1;  
  if(counter > 150) {
      fill(random(256), random(256), random(256));
  }
  //Make the location of the ball change over time
  ellipse(ballX, ballY, ballSizeX, ballSizeY);
  //Move the ball to the right or left by speedX
  //If speedX is +, ball moves right
  //If speedX is -, ball moves left
  ballX = ballX + speedX;
  
  //Randomize the Position of the Ball  
  //ballX = random(width/2, width);
  //ballY = random(height/2, height);

  // This controls when the rectangle draws
  // Draw the rectangle when the ball is either in the last 100 pixels
  // of the left-hand side or the right-hand side of the window
  if(ballX >= 0 && ballX < 100 || ballX > 300 && ballX <= 400) {
    //If ballX is at 300, Will this code run?
    // Center the rectangle
    rectMode(CENTER);
    // Draw the rectangle relative to the center of the window
    rect(width/2, height/2, 200,200);  
    println("DRAWING THE RECTANGLE");
  }
  
  //Go back when x-loc of the ball hits the edge  
  if (ballX >= width || ballX <= 0) {
    //Change direction
    speedX = speedX * -1;
  }
  println(speedX);
  println(ballX);
}

//Interupt Draw Loop when I press the mouse to reset the counter
void mousePressed() {  
  //Set the counter back to 0
  counter = 0;
}
