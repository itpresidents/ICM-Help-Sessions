void setup () {
  //this only happens once
  println ("SETUP!!"); 
}

void draw () {
  //draw loops over and over
  println ("DRAW!!!"); 

  //if you put mousePressed in draw, it will continue looping while you have it held down
  if (mousePressed) {
  println ("MOUSEPRESSED IN DRAW!!!"); 
  }

}

void mousePressed() {
   // having mousePressed in the event fires the event only once - making it ideal for buttons
  println ("MOUSEPRESSED EVENT!!!"); 
}

void keyPressed () {
  //keyPressed is an event too 
  println ("KEYPRESSED!!!"); 
}
