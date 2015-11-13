//declare variables
float diam;
PVector loc, vel, acc;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables

  diam = 80;
  loc = new PVector(random(diam, width-diam), random(diam, height-diam));
  vel = PVector.random2D();
  acc = new PVector();
}

void draw() {
  //draw background to cover previous frame
  background(0);

  acc = PVector.random2D();
  acc.mult(.1);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add acceleration to velocity
  vel.add(acc);
  vel.limit(5);

  //add velocity to position
  loc.add(vel);

  //wrap the ball's position
  if (loc.x >= width) {
    loc.x = 0;
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y <= 0) {
    loc.y = height;
  }
}