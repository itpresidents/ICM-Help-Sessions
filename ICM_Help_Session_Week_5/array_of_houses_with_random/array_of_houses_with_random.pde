
//declare: I want an array, and I want this many objects in the list
House [] houses = new House [100]; 


void setup () {
  size (500, 500); 
  
  //initialize your objects 
  //the same as saying:
  // houses[0] = new House (random, random); 
  // houses[1] = new House (random, random); 
  // houses[2] = new House (random, random); 
  for (int i = 0; i < houses.length; i++) {
    houses[i] = new House (int(random(width)), int(random(height))); 
  }
}

void draw() {
  
    background (255); 
    
    //this 
    for (int i = 0; i < houses.length; i++) {
      houses[i].drawHouse(); 
    }
  
    houses[int(random(houses.length))].houseSize = int (random (0,20));
}


class House {
  int houseX, houseY, houseSize; 
  
  House (int tempHouseX, int tempHouseY) {
    
  houseX = tempHouseX; 
  houseY = tempHouseY; 
  houseSize = 20; 
  }
  
  void drawHouse () {
  fill (255, 0, 0); 
  rect (houseX, houseY, houseSize, houseSize); 
  fill (0, 255, 0); 
  triangle (houseX, houseY, houseX + houseSize/2, houseY - houseSize/2, houseX + houseSize, houseY); 
  }
  
  void setSize (int tempSize) {
    houseSize = tempSize; 
  }
  
  boolean isMouseOver () {
    if (mouseX > houseX && mouseX < houseX + houseSize) {
      setSize (30); 
      return true; 
    } else {
      setSize (100); 
      return false; 
    }
  }
  
  
  
}


