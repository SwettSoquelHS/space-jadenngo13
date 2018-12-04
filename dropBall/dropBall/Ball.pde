class Ball {
  float x;
  float y;
  float dX;
  float dY;
  float r;
  boolean l;
  float size;
  
  Ball(float x, float y, float r, float size) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.size = size;
    dX = 0;
    dY = 1;
  }

  void move() {
    dY += g;
    dY *= r;
    y = y + dY;
    x = x + dX;
    if(y + size/2>= height){
      dY *= -1;
      y -= 1;
    }
    if(x + size >= width){
      dX = -dX;
    }
    if(x + size <= 0){
      dX = -dX;
    }
  }
  
  void update(){
    
  }

  void show() {
    fill(250);
    ellipse(x, y, size, size);
  }
}
