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
    if (x < width + size) {
      x += speed;
    } else {
      x = -size;
    }
  }

  void show() {
    fill(250);
    ellipse(x, y, size, size);
  }
}
