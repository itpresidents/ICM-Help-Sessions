
House greenHouse1, greenHouse2, greenHouse3; 


void setup () {
  size (500, 500); 

greenHouse1 = new House(75, 100);   
greenHouse2 = new House(100, 300);   
greenHouse3 = new House(250, 150);   

}

void draw() {
  
  background (255); 
  greenHouse1.drawHouse(); 
  greenHouse2.drawHouse(); 
  greenHouse3.drawHouse(); 
  
  greenHouse1.isMouseOver(); 
  
  /*
  if (greenHouse1.isMouseOver()) {
    greenHouse2.setSize(30); 
    greenHouse3.setSize(30); 
  } else {
    greenHouse2.setSize(100); 
    greenHouse3.setSize(100); 
  }
  */

}

class House {
  int houseX, houseY, houseSize; 
  
  House (int tempHouseX, int tempHouseY) {
    
  houseX = tempHouseX; 
  houseY = tempHouseY; 
  houseSize = 100; 
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


