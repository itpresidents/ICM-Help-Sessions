//10.01.12
//ICM Help Session Week 5 
//Create a function to draw a snowman
//Draw 100 snowmen on a grid of 10 x 10
//Move the snowmen

int xPos;
int yPos;

int bigWidth;
int bigHeight;
int littleWidth;
int littleHeight;

int spacingX;
int spacingY;


void setup() {

  size(600, 600);

  xPos = width/10;
  yPos = height/10;

  bigWidth = 30;
  bigHeight = 30;
  littleWidth = 20;
  littleHeight = 20;

  spacingX = 55;
  spacingY = 55;
}

void draw() {

  background (50, 80, 200);

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j ++) {
      drawSnowman(xPos + (i * spacingX), yPos + (j * spacingY), bigWidth, bigHeight, littleWidth, littleHeight);
    }
  }

  //height of a single snowman
  int snowmanHeight = bigHeight + littleHeight;
  //snowmanTop will always be tracKing the top row of snowmen
  int snowmanTop = (yPos - (bigHeight/2 + littleHeight)); 

  if (snowmanTop > height) {
    //reset the snowman to the top of the sketch
    yPos = -((snowmanHeight*9) + bigHeight/2 + (9 * (spacingY - snowmanHeight)));
  }
  else {
    yPos = yPos + 1;
  }
}


void drawSnowman(int mainX, int mainY, int mainWidth, int mainHeight, int smallWidth, int smallHeight) {

  noStroke();
  fill(255);
  ellipse(mainX, mainY, mainWidth, mainHeight);
  ellipse(mainX, mainY - mainHeight/2 - smallHeight/2, smallWidth, smallHeight);
}

