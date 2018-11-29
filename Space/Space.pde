float x;
float y;
float speed;
float size;
int jumboIndex = 0;
int normalIndex = 0;
Jumbo[] jumboParticles = new Jumbo[100];
Normal[] normalParticles = new Normal[100];
Space[] particles = new Space[100];

void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i<particles.length; i++) {
    int a = (int) random(1, 3);
    if (a == 1) {
      particles[i] = normalParticles[normalIndex];
      normalIndex++;
    } else {
      particles[i] = jumboParticles[jumboIndex];
      jumboIndex++;
    }
  }
  System.out.println("Normal index: " + normalIndex);
  System.out.println("Jumbo index: " + jumboIndex);
} //end of setup


void draw() {
  background(0);
  for (int i = 0; i<particles.length; i++) {
    // particles[i].show();
    //  particles[i].move();
  }
} //end of draw
