class Jumbo extends Normal {
  float c1;
  float c2;
  float c3; 

  Jumbo(float x, float y, float speed, float size) {
    super(x, y, speed, size);
    c1 = random(0, 250);
    c2 = random(0, 250);
    c3 = random(0, 250);
  } 

  @Override
    void move() {
    if (x < width + size) {
      x += speed;
    } else {
      x = -size;
      y = random(0, height);
      c1 = random(0, 250);
      c2 = random(0, 250);
      c3 = random(0, 250);
      size = random(size-1, size+1);
    }
  }
  @Override
    void show() {
    fill(c1, c2, c3);
    ellipse(x, y, size, size);
  }
}
