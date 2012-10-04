Ball ball1, ball2;

void setup() {
  size(800, 600);
  ball1 = new Ball(0, 0, 1, .5, #FF0000);
  ball2 = new Ball(width/2, height/2, 5, .1, #2AA036);
}

void draw() {
  background(0);
  ball1.display();
  ball1.update(5);
  ball1.reachedBottom();
  
  // If ball1 is going down
  // Move ball2
  // Otherwise don't
  if(ball1.speedDir > 0){
    ball2.update(5);    
  }

  ball2.display();
}


class Ball {
  float xLoc, yLoc, sz, speed, speedDir;
  color ballColor;


  // THIS IS THE CONSTRUCTOR
  Ball(float tempXLoc, float tempYLoc, float tempSz, float tempSpeed, color tempBallColor) {
    xLoc = tempXLoc;
    yLoc = tempYLoc;
    sz = tempSz;
    speed = tempSpeed;
    ballColor = tempBallColor;
    speedDir = 1;
  }
  
  // Draw the ball
  void display() {
    fill(ballColor);
    ellipse(xLoc, yLoc, sz, sz);
  }

  // Update the location of the ball
  // As in, MOVE the ball
  void update(float speedFactor) {
    xLoc += speed*speedFactor*speedDir;   
    yLoc += speed*speedFactor*speedDir; 
    sz += speed;
  }

  // A Function that returns DATA!!!
  // The ball checks to see if it's reached the bottom
  // When it does, it changes direction
  boolean reachedBottom() {
    if (yLoc >= height || yLoc <= 0) {
      speedDir = speedDir * -1;
      return true;
    }
    else {
      return false;
    }
  } 
}
