class Fire {
  int c;
  int[] colors = {#FF0303, #FAFF03, #FF5703}; //red, yellow, orange
  int r;
  float x;
  float y;
  float xspeed;
  float yspeed;

  Fire(float x, float y, float xspeed, float yspeed) {
    this.x = x;
    this.y = y;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
    r = (int) random(0, 3);
    c = colors[r];
  }

  void move(float sX, float sY) {
    if (dist(sX, sY, x, y) < 200) {
      x += xspeed;
      y += yspeed;
    } else {
      x = sX;
      y = sY;
    }
  }

  void show() {
    fill(c);
    ellipse(x, y, 5, 5);
  }
}
