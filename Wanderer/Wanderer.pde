//declare variables
int count = 1000;
float diam;

PVector[] loc= new PVector[count];
PVector[] vel= new PVector[count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for (int i = 0; i < count; i++) {
    diam = 20;
    loc [i] = new PVector (width/2, height/2);
    vel[i] = PVector.random2D();

  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  //draw ball
  for (int i = 0; i < count; i++) {
    ellipse(loc[i].x, loc[i].y, diam, diam);

    //add velocity to position
    loc[i].add(vel[i]);

    //wrap the ball's position
    if (loc[i].x >= width) {
      loc[i].x = 0;
    } else if (loc[i].x <= 0) {
      loc[i].x = width;
    }
    if (loc[i].y >= height) {
      loc[i].y = 0;
    } else if (loc[i].y <= 0) {
      loc[i].y = height;
    }
  }
}