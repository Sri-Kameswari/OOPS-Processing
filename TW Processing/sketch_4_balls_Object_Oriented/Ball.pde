class Ball {
  
  float x, y, speed;
  color c;
  
  Ball(float x, float y, float speed, color c){
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.c = c;
  }
  
  void move() {
    x = x + speed;
    if (x > width) {
      x = 0;
    }
  }
  
  void display() {
    fill(c);
    ellipse(x, y, 10, 10);
  }
}
