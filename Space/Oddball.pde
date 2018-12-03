class Oddball extends Normal {

  Oddball(float x, float y, float speed, float size) {
    super(x, y, speed, size);
  }

  @Override
    void move() {
    if (x > -100) {
      if (toggleOdd) 
        x -= speed*6;
      x -= speed;
    } else {
      x = width + 100;
      y = random(0, height);
    }
    spaceX = x;
    spaceY = y;
  }

  @Override
    void show() {
    fill(#FAF205); //yellow
    pushMatrix();
    image(spaceShip, x, y);
    spaceShip.resize(100, 50);
    image(alonzo, x + 30, y-23);
    alonzo.resize(35, 40);
    popMatrix();
  }
}
