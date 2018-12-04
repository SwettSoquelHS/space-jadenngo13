class Platform {
  float x;
  float y;
  int x1;
  int y1;

  Platform(float x, float y, int x1, int y1) {
    this.x = x;
    this.y = y;
    this.x1 = x1;
    this.y1 = y1;
  }

  void show() {
    stroke(250);
    line(x, y, x1, y1);
  }
}
