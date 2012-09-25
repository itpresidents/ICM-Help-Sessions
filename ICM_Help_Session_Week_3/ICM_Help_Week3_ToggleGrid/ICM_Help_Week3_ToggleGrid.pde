int totalRows = 24;
int totalCols = 32;
int totalCells = totalRows*totalCols;

// Size of each cell
int w = 20;

// Array to store on/off state of each cell
// Array to store hover state of each cell
boolean [] onOffs = new boolean[totalCells];
boolean [] hovering = new boolean[totalCells];

void setup() {
  size(640, 480); 

  // Initialize the arrays all to OFF
  for (int i = 0; i < totalCells; i++) {
    onOffs[i] = false;
    hovering[i] = false;
  }
}

void draw() {

  // Iterate through the grid, one row at a time
  for (int thisRow = 0; thisRow < totalRows; thisRow++) {
    for (int thisCol = 0; thisCol < totalCols; thisCol++) {

      //Calculate which cell you're on
      int thisCell = thisRow*totalCols + thisCol;

      //Calculate the top-left corner of the cell in pixels by 
      //multiplying the cell row/col coordinates by the size of the cell
      int thisCellX = thisCol*w;
      int thisCellY = thisRow*w;

      //Check to see if your mouse in inside the cell
      //If so, change the hover state of that cell to TRUE
      if (mouseX > thisCellX && mouseX < thisCellX+w && mouseY > thisCellY && mouseY < thisCellY+w) {        
        hovering[thisCell] = true;

        //Check to see if you've clicked the mouse
        //If so, toggle the on/off state of that cell from OFF to ON or ON to OFF
        if (mousePressed) {
          onOffs[thisCell] = !onOffs[thisCell];
        }
      }
      
      //If the mouse isn't inside the cell, change the hover state of that cell to FALSE
      //You can't just toggle the hover state like the ON/OFF state because the cell will 
      ///flash ON/OFF the whole time the mouse remains inside the cell
      else {
        hovering[thisCell] = false;
      }

      //Fill the cell with black if the mouse is hovering over it or it's been clicked ON
      if (onOffs[thisCell] || hovering[thisCell]) {
        fill(0);
      }
      
      //Otherwise fill it with white
      else {
        fill(255);
      }
      
      //Draw the rectangle
      rect(thisCellX, thisCellY, w, w);
    }
  }
}

