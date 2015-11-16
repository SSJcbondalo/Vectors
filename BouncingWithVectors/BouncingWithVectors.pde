//declare variables
int count = 10;
float diam;
int i;

//float x,y 
PVector[] loc= new PVector[count];  //replaces x and y


//float velX, velY
PVector[] vel= new PVector[count]; //replaces velX, velY







void setup() {
  //set size of canvas
  size(800, 600);
  for (int i = 0; i < count; i++) {
    //initialize variables
    diam = 5;
    // x and y equals respected width and height /2 
    loc[i] = new PVector(width/2, height/2);
    vel[i] = PVector.random2D();      //replaces new PVector (random(5, -5), random(5, -5));
  }
}







void draw() {
  //draw background to cover previous frame
  background(0);
  for (int i = count; i < count; i++) {
    //draw ball
    ellipse(loc[i].x, loc[i].y, diam, diam);

    //add velocity to position
    //loc.x += vel.x;
    //loc.y += vel.y;
    loc[i].add(vel[i]);

    //bounce ball if it hits walls
    if (loc[i].x + diam/2 >= width) {
      vel[i].x = -abs(vel[i].x);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (loc[i].x - diam/2 <= 0) {
      vel[i].x = abs(vel[i].x);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (loc[i].y + diam/2 >= height) {
      vel[i].y = -abs(vel[i].y);
    } else if (loc[i].y - diam/2 <= 0) {
      vel[i].y = abs(vel[i].y);
    }
  }
}