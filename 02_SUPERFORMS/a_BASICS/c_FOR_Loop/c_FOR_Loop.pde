/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 
*/

/////////////////////////// GLOBALS ////////////////////////////


/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 200);
  background(255);
  smooth();
  noStroke();
  fill(0);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(255);
      
    for (int x = 20; x<width-10; x+=50) {       
      ellipse( x, 100, 25, 25);
    }
  }




/////////////////////////// FUNCTIONS ////////////////////////////

