/*
----------------------------------------
 PLEASE READ INFO TAB FOR ALL INFORMATION
 ----------------------------------------
 */

/////////////////////////// GLOBALS ////////////////////////////
float y;
float x = 80;
float xStep = 1.5;

float theta; // angle
float angleStep = 0.01;
float sinusFrequency = 0.035;
float sinusAmplitude = 100;

boolean SQUARE, CIRCLE, LINE;
float WEIGHT = 0.6;
float len = 10;

// NOISE ADDED
float noise;
float noiseStrength = 50.5;
float noiseScale = 0.005;

/////////////////////////// SETUP ////////////////////////////
void setup() {
  size(600, 760);
  background(0);
  noFill();
  rectMode(CENTER);
  stroke(255);
  strokeWeight(WEIGHT);
  smooth(8);
  theta = QUARTER_PI/4;
  SQUARE = true;
  CIRCLE = false;
  LINE = false;
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  translate(x, 200+y);

  // scales uses sinus to modify size of graphics
  float scales = sin(frameCount * sinusFrequency) * sinusAmplitude;

  // Added noise
  noise = noise(x * noiseScale, y * noiseScale) * noiseStrength;
  rotate(theta);

  // Graphics + noise added !

  if (SQUARE) {
    rect(0, 0, scales-noise, scales/400-noise);
  }
  if (CIRCLE) {
    ellipse(0, 0, scales - noise, scales/2 - noise);
  }

  if (LINE) {
    line(-len-noise, -len-noise, len+noise, len+noise);
  }
  // update vars
  theta = theta + angleStep;
  x = x + xStep;

  // Check x boundary & repeat?
  if (x>=width-90) {
    x = 80;
    y += 50;
  }
}



//---------------------- KEYS N THINGS ----------------------
//RESET THE ANIMATION
void mousePressed() {
  background(0);
  x=80;
  y = 0;
}

void keyPressed() {
  if (key == 's') {
    saveFrame("myImage_###.png");
    background(0);
    x=80;
    y= 0;
  }
  if (key == '1') {
    SQUARE = !SQUARE;
  }

  if (key == '2') {
    CIRCLE = !CIRCLE;
  }

  if (key == '3') {
    LINE = !LINE;
  }
}

