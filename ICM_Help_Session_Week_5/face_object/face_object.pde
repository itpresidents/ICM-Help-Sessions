Face yourFace;

void setup() {
  size(600, 600);
  yourFace = new Face(width/2, height/2, 100);
}

void draw() {
  yourFace.runAllFunctions();
}


class Face {
  // Where is the face? 
  int faceX, faceY;
  int sizeFace; 

  Face (int whateverYouWant, int tempFaceY, int tempSizeFace) {
    faceX = whateverYouWant;
    faceY = tempFaceY;
    sizeFace = tempSizeFace;
  }
 
  void runAllFunctions() {
    if(keyPressed && key == 'a')
       drawHead();
    if(keyPressed && key == 'b')
       drawEyes();
  }

  void drawHead() {
   ellipse(faceX, faceY, sizeFace, sizeFace);   
  }
  
  void drawEyes() {
   ellipse(faceX - sizeFace/4, faceY - sizeFace/4, sizeFace/10, sizeFace/10); 
   ellipse(faceX + sizeFace/4, faceY - sizeFace/4, sizeFace/10, sizeFace/10); 
  }
  
  void moveFace() {
    
  }
  
}
