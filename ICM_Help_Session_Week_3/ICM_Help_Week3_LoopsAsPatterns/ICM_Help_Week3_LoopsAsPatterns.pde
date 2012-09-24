
void setup() {
  size(600, 400);  
}


void draw() {
  background(255);
  
  // Create a loop that runs the "same" code 20 times
  // Where each "time" through the loop is represented by the integer variable "i"
  
  for(int i=0; i < 20; i++){
    // Use % (modulo) to skip over ever other time through the loop
    if(i%2 == 0) {
      fill(0);
    }
    else {
      fill(128);  
    }
    
    int yLoc = i*20;
    rect(0, yLoc, 100, 20);
  }
}
