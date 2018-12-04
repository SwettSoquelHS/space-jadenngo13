Ball[] balls = new Ball[1];
Platform[] blocks = new Platform[100];
int total = 0;
float x;
float y;
float speed;
boolean gravity = false;
float g = .1; //gravity value
float size = 20;
float airResistance = .995; //resistance on ball (ball bounces lower and lower each time)
float mX = -100; //sets first circle to start of screen
float mY = -100;
boolean start = false; //initializes the game
boolean endLine = false;

void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i<balls.length; i++) {
    y = 0;
    x = random(0, width);
    balls[i] = new Ball(x, y, airResistance, size);
  }
  for (int i = 0; i<blocks.length; i++) {
    blocks[i] = new Platform(0, 0, 0, 0);
  }
}

void draw() {
  background(0);
  for (int i = 0; i<balls.length; i++) {
    if (gravity) {
      balls[i].move();
    }
    balls[i].show();
  }
  stroke(250);
  fill(#D11111);
  ellipse(mouseX, mouseY, 10, 10);
  ellipse(mX, mY, 10, 10);
  if (start) {
    line(mX, mY, mouseX, mouseY);
    if (total < blocks.length && endLine) {
      blocks[total] = new Platform(mX, mY, mouseX, mouseY);
      total++;
      endLine = false;
    }
  }
  for (int i = 0; i<total; i++) {
    blocks[i].show();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    start = true;
    mX = mouseX;
    mY = mouseY;
  }
  if(mouseButton == RIGHT){
    endLine = true;
  }
}

void keyPressed() {
  if (key == 'g') {
    gravity = !gravity;
  }
  if (key == 'e') {
    endLine = true;
  }
}
