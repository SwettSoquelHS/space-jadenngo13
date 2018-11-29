class Normal {
  float x;
  float y;
  float speed;
  float size;
  
  Normal(float x, float y, float speed, float size) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.size = size;
  }

  void move() {
    if (x < width) {
      x += speed;
    } else {
      x = 0;
    }
  }

  void show() {
    fill(250);
    ellipse(x, y, size, size);
  }
}
