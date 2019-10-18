color green  = #63E06B;
color dgreen = #217424;
color yellow = #FFD05E;
color blue   = #40b0E2;
color white  = #FFFFFF;
color grey   = #6a7685;
color dblue  = #1b3241;
color dgrey  = #494846;

int x1 = -200; //big hills
int x2 = 200;
int x3 = 600;

int x4 = 400; //cloud

int x5 = -200; //forward hills
int x6 = 0;
int x7 = 200;
int x8 = 400;
int x9 = 600;
int x10 = 800;

int endermanx = 0;

void setup() {
  size (800, 600);
  noStroke();
}

void draw() {
  background(dblue);
 
  fill(grey); //cloud
  ellipse(x4, 150, 100, 100);
  ellipse(x4, 200, 100, 100);
  ellipse(x4-50, 200, 100, 100);
  ellipse(x4+50, 200, 100, 100);
 
  fill(dgrey); //back hills
  ellipse(x1, 400, 400, 400);
  ellipse(x2, 400, 400, 400);
  ellipse(x3, 400, 400, 400);

fill(dgreen); //forward hills
ellipse(x5, 400, 200, 200);
ellipse(x6, 400, 200, 200);
ellipse(x7, 400, 200, 200);
ellipse(x8, 400, 200, 200);
ellipse(x9, 400, 200, 200);
ellipse(x10, 400, 200, 200);
fill(#cecece);
rect(0, 0, 130, 130);
fill(#f8f8f8);
rect(0, 0, 75, 75);

x5 = x5 + 3;
x6 = x6 + 3;
x7 = x7 + 3;
x8 = x8 + 3;
x9 = x9 + 3;
x10 = x10 + 3;

if  (x5 >= 1000) {
  x5 = -200;
}
if  (x6 >= 1000) {
  x6 = -200;
}
if  (x7 >= 1000) {
  x7 = -200;
}
if  (x8 >= 1000) {
  x8 = -200;
}
if  (x9 >= 1000) {
  x9 = -200;
}
if  (x10 >= 1000) {
  x10 = -200;
  }

fill(yellow); //ground
rect(0, 400, 800, 200);

pushMatrix();
translate(endermanx, 50);
enderman();
popMatrix();

endermanx = endermanx + 2;

//move cloud
x4 = x4 + 1;

if  (x4 == 1000) {
  x4 = -200;
  }

//move back hills
x1 = x1 + 2;
x2 = x2 + 2;
x3 = x3 + 2;

if  (x1 >= 1000) {
  x1 = -200;
}
if  (x2 >= 1000) {
  x2 = -200;
}
if  (x3 >= 1000) {
  x3 = -200;
  }
if  (endermanx >= 830)  {
  endermanx = -385;
}
}

// ---------------------------------------------------------------------------

void enderman() {
 noStroke();
fill(0);
rect(300, 210, 70, 100); //body
rect(307, 310, 22, 180); //left leg
rect(339, 310, 22, 180); //right leg
rect(282, 210, 18, 180); //left arm
rect(370, 210, 18, 180); //right arm
rect(305, 148, 62, 62); //head

fill(#fbe7ff);
rect(305, 165, 23, 8); //left eye
rect(344, 165, 23, 8); //right eye

fill(#f3a9ff);
rect(312, 165, 8, 8); //left pupil
rect(352, 165, 8, 8); //right pupil
}

  
  
  
  
  
  
  
  
  
