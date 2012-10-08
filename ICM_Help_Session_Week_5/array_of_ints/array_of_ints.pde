//int [] integers = new int [3];
int [] integers = {0, 1, 2};

void setup() {
 
 size(400, 400);

 integers[0] = 0;
 integers[1] = 1;
 integers[2] = 2; 
  
}

void draw() {
 background(0);
 textSize(48); 
 text(integers[0], 100, 100); 
}
