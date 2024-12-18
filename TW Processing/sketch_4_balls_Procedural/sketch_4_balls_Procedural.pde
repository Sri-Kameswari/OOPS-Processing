float b1_x, b1_y, b1_speed;
float b2_x, b2_y, b2_speed;
float b3_x, b3_y, b3_speed;
float b4_x, b4_y, b4_speed;
color b1_c, b2_c, b3_c, b4_c;

void setup() {
  size(200, 200);
  
  // Initialize ball properties
  b1_x = 0; b1_y = width / 5; b1_speed = 1; b1_c = color(255);
  b2_x = 0; b2_y = 2 * width / 5; b2_speed = 2; b2_c = color(255);
  b3_x = 0; b3_y = 3 * width / 5; b3_speed = 3; b3_c = color(255);
  b4_x = 0; b4_y = 4 * width / 5; b4_speed = 4; b4_c = color(255);
}

void draw() {
  background(255);
  
  // Move and display balls
  b1_x = moveBall(b1_x, b1_speed);
  displayBall(b1_x, b1_y, b1_c);
  
  b2_x = moveBall(b2_x, b2_speed);
  displayBall(b2_x, b2_y, b2_c);
  
  b3_x = moveBall(b3_x, b3_speed);
  displayBall(b3_x, b3_y, b3_c);
  
  b4_x = moveBall(b4_x, b4_speed);
  displayBall(b4_x, b4_y, b4_c);
}

float moveBall(float x, float speed) {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
  return x;
}

void displayBall(float x, float y, color c) {
  fill(c);
  ellipse(x, y, 10, 10);
}
