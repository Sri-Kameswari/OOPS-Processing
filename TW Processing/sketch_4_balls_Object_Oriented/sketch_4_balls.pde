Ball b1, b2, b3, b4;

void setup() {
  size(200, 200);
  
  b1 = new Ball(0, width / 5, 1, color(255));
  b2 = new Ball(0, 2 * width / 5, 2, color(255));
  b3 = new Ball(0, 3 * width / 5, 3, color(255));
  b4 = new Ball(0, 4 * width / 5, 4, color(255));
}

void draw() {
  background(255);
  
  b1.move();
  b1.display();
  
  b2.move();
  b2.display();
  
  b3.move();
  b3.display();
  
  b4.move();
  b4.display();
}
