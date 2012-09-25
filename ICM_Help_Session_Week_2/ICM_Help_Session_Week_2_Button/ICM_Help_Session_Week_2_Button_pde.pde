/* we make two booleans to create a button that turns on when two conditions are fulfilled: 
when the mouse is over the rectangle, and when its pressed. 
*/ 


boolean isMouseOverRect; 
boolean isMousePressed; 

void setup () {
  size (500, 500); 
  isMouseOverRect = false;
  isMousePressed = false; 
}

void draw () {
  background (255); 

  //once we have our booleans working, this is all we need to make the button. 
  if (isMouseOverRect == true && isMousePressed == true) {
    fill (random (100, 155), random (255), random (255));
  } 
  else if (isMouseOverRect == false) {
    fill (0);
  }

  rect (width/2, height/2, 100, 100); 

  //this controls the "isMouseOverRect" boolean 
  if ((mouseX > width/2) && (mouseX < width/2 + 100) && (mouseY > height/2) && (mouseY < height/2 + 100)) {
    isMouseOverRect = true;
  } 
  else {
    isMouseOverRect = false;
  }

  textSize (20); 
  fill (10); 
  text ("isMousePressed? " + isMousePressed, 30, 30); 
  text ("isMouseOver? " + isMouseOverRect, 30, 60); 
}


void mousePressed() {
  
  if (isMousePressed == true) {
    isMousePressed = false; 
  } else {
    isMousePressed = true; 
  }
}
