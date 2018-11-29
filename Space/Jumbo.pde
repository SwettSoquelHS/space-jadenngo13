class Jumbo extends Space{
  float x;
  float y;
  float size;
  float speed;
  
  Jumbo() {
    x = random(0, width);
    y = random(0, height);
    size = random(5, 10);
    speed = random(.5, 1);
  }

  void show() {
    ellipse(x, y, size, size);
  }

  void move() {
    y += random(-.5, .5);
    if (x < width) {
      x += speed;
    } else {
      x = 0;
    }
  }
}
