Normal[] particles = new Normal[1000];
Oddball odd = new Oddball(400, 300, .5, 1);
Fire[] rocketBoost = new Fire[120];
float spaceX = 0; //x and y values for spaceship
float spaceY = 0;
int assign;
float x;
float y;
float size;
float speed;
boolean toggleOdd = false;
PImage spaceShip;
PImage alonzo;

void setup() {
  size(800, 600);
  background(0);
  spaceShip = loadImage("rocket_blasting_horizontal.png");
  alonzo = loadImage("alonzo.jpg");
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
  for (int i = 0; i<rocketBoost.length; i++) {
    rocketBoost[i] = new Fire(spaceX, spaceY, random(.5, 3), random(-.5, .5));
  }
}//end of setup


void draw() {
  background(0);
  fill(250);
  odd.move();
  odd.show();
  if (toggleOdd) {
    for (int i = 0; i<rocketBoost.length; i++) {
      rocketBoost[i].move(spaceX+100, spaceY+25);
      rocketBoost[i].show();
    }
  }
  for (int i = 0; i<particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }
} //end of draw

void mousePressed() {
  toggleOdd = true;
}

void mouseReleased() {
  toggleOdd = false;
}
