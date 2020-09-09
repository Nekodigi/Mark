color baseCol, bgCol;
boolean showGuide = true;

void setup(){
  size(500, 500);
  float r1 = width/2;//largest circle size
  float r2 = width/3;//middle circle size
  float r3 = width/4.5;//smallest circle size
  baseCol = color(100, 50, 255);
  bgCol = color(0);
  noStroke();
  background(bgCol);
  //show figure
  translate(r1, r1);
  drawUnit(r1, r2, r3);
  rotate(TWO_PI/3);
  drawUnit(r1, r2, r3);
  rotate(TWO_PI/3);
  drawUnit(r1, r2, r3);
  rotate(TWO_PI/3);
  fill(baseCol);
  ellipse(0, -r1+r3, r3*2, r3*2);
  rotate(TWO_PI/3);
  ellipse(0, -r1+r3, r3*2, r3*2);
  rotate(TWO_PI/3);
  ellipse(0, -r1+r3, r3*2, r3*2);
  
  //show guide
  if(showGuide){
    stroke(255);
    strokeWeight(4);
    noFill();
    ellipse(0, 0, r1*2, r1*2);
    ellipse(0, -r1+r2, r2*2, r2*2);
    ellipse(0, -r1+r3, r3*2, r3*2);
    arc(0, 0, r1*2, r1*2, -HALF_PI-TWO_PI/3, -HALF_PI, PIE);
    rotate(TWO_PI/3);
    ellipse(0, 0, r1*2, r1*2);
    ellipse(0, -r1+r2, r2*2, r2*2);
    ellipse(0, -r1+r3, r3*2, r3*2);
    arc(0, 0, r1*2, r1*2, -HALF_PI-TWO_PI/3, -HALF_PI, PIE);
    rotate(TWO_PI/3);
    ellipse(0, 0, r1*2, r1*2);
    ellipse(0, -r1+r2, r2*2, r2*2);
    ellipse(0, -r1+r3, r3*2, r3*2);
    arc(0, 0, r1*2, r1*2, -HALF_PI-TWO_PI/3, -HALF_PI, PIE);
  }
}

void drawUnit(float r1, float r2, float r3){
  fill(baseCol);
  arc(0, 0, r1*2, r1*2, -HALF_PI-TWO_PI/3, -HALF_PI, PIE);
  fill(bgCol);
  arc(0, -r1+r2, r2*2, r2*2, HALF_PI, HALF_PI*3);
}
