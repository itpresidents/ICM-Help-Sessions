boolean [] mouseOver = new boolean [8]; 
float []translatedX = new float [8];
float []translatedY = new float [8];
int longSide;

void setup () {
  size(600, 600, OPENGL); // we need to change the renderer to OPENGL in order to access the modelX()/modelY() functionality
  noStroke();
  smooth(); 
  longSide = 80; 
}

void draw () {
  background (0); 

  //start out transformations here
  pushMatrix(); 
  translate(width/2, 300);

  for (int i = 0; i < 8; i++) {
    rotate(radians(45*i));
    
    pushMatrix();
    translate (150,0);
    rectMode (CENTER);
    fill (255); 
    rect(0, 0, longSide, 40);
    
    //when we leave the matrix transformation at PopMatrix(), we will lose the value of the transform and that will screw up
    //our mouseX mouseY interactions. So using modelX() and modelY(), we SAVE the value of the transformation, for use later.
    translatedX[i] = modelX (0,0,0);
    translatedY[i] = modelY (0,0,0);

    popMatrix(); 
  }

  popMatrix(); 

  // here we check for hover! see how we are using the translatedX and translatedY values?
   for (int i = 0; i < 8; i++) {
     if (dist(mouseX, mouseY, translatedX[i], translatedY[i]) < longSide*0.5){
     fill (200, 50);
     ellipse (translatedX[i], translatedY[i], longSide, longSide); 
     }
   }

 
}
