Normal[] particles = new Normal[1000];
int assign;
float x;
float y;
float size;
float speed;

void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i<particles.length; i++) {
    x = random(0, width);
    y = random(0, height);
    size = random(1, 5);
    speed = random(.5, 1);
    assign = (int)random(0, 200);
    if (assign == 5) {
      speed /= 2;
      size *= 20;
      particles[i] = new Jumbo(x, y, speed, size);
    } else {
      particles[i] = new Normal(x, y, speed, size);
    }
  }
}//end of setup


void draw() {
  background(0);
  fill(250);
  for (int i = 0; i<particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }
} //end of draw
