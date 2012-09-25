Car [] cars = new Car[10]; 
int [] savedPointsX = new int [10]; 
int [] savedPointsY = new int [10]; 
int counter = -1; 

int savedNum; 
int newNum; 

void setup () {
  size (500, 500);
  for (int i = 0; i < cars.length; i++) {
    cars[i] = new Car();
  }
}


void draw () {

  background (0); 

  for (int i = 0; i < cars.length; i++) {

    
    if (cars[i].isItOn(mouseX, mouseY)) {
      fill (255, 0, 0);
      newNum = i; 
      if (savedNum != newNum) { // only increment the counter if this is a NEW car
        if (counter > 8) { //if its 9, loop back to 0
          counter = 0;          
          for (int j = 0; j < counter; j++) {
            savedPointsX[j] = 0; 
            savedPointsX[j] = 0;
          }
        } 
        else {
          counter++; //otherwise, keep going up 
        }
        savedNum = newNum; //reset the saved num
        savedPointsX[counter] = cars[i].locX;  //in the savedPoints array at the number Counter, save the location of the active car
        savedPointsY[counter] = cars[i].locY;
      }
    } 
    else {
      fill (255);
    }
    cars[i].drawCar (i*50, 30, 30);
  }

//draw the lines using the savedPoints array!
  for (int i = 0; i < counter; i++) { 
    stroke (255); 
    line (savedPointsX[i], savedPointsY[i], savedPointsX[i+1], savedPointsY[i+1]);
  }
}


//--------------------------------------------------------------

class Car {
  int locX, locY, sizeX, sizeY; 

  Car() {
    locY = int(random (height));
  }

  void drawCar (int locX_, int sizeX_, int sizeY_) {  
    locX = locX_;     
    sizeX = sizeX_; 
    sizeY = sizeY_;

    rect (locX, locY, sizeX, sizeY);
  }

  boolean isItOn (int mouseX_, int mouseY_) {

    int mouseLocX = mouseX_; 
    int mouseLocY = mouseY_;     

    if (mouseLocX > locX && mouseLocX < locX + sizeX && mouseLocY > locY && mouseLocY < locY + sizeY) {
      return true;
    } 
    else {
      return false;
    }
  }
}
