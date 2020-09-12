//based on this site https://99percentinvisible.org/article/biohazard-symbol-designed-to-be-memorable-but-meaningless/

float scale = 50;
float xoff = 1;
float xoffi = 0.01;//xoff increment
float yioff = 0.2;

float Ab = 1;
float Bb = 3;
float Cb = 4;
float Db = 6;
float Eb = 11;
float Fb = 15;
float Gb = 21;
float Hb = 30;
float A = 1;
float B = 3;
float C = 4;
float D = 6;
float E = 11;
float F = 15;
float G = 21;
float H = 30;


color col, bgcol;

void setup(){
  //size(600, 600);
  fullScreen();
  A *= scale;
  B *= scale;
  C *= scale;
  D *= scale;
  E *= scale;
  F *= scale;
  G *= scale;
  H *= scale;
  Ab *= scale;
  Bb *= scale;
  Cb *= scale;
  Db *= scale;
  Eb *= scale;
  Fb *= scale;
  Gb *= scale;
  Hb *= scale;
  col = color(255, 0, 0);
  bgcol = color(255);
  
}

void draw(){
  A = noise(xoff, 0)*Ab;
  B = noise(xoff, yioff*1)*Bb;
  C = noise(xoff, yioff*2)*Cb;
  D = noise(xoff, yioff*3)*Db;
  E = noise(xoff, yioff*4)*Eb;
  F = noise(xoff, yioff*5)*Fb;
  G = noise(xoff, yioff*6)*Gb;
  H = noise(xoff, yioff*7)*Hb;
  background(bgcol);
  translate(width/2, height/2);
  drawMark();
  
  xoff += xoffi;
}

void drawMark(){
  fill(col);//big ring
  ellipse(0, -E, H, H);
  rotate(TWO_PI/3);
  ellipse(0, -E, H, H);
  rotate(TWO_PI/3);
  ellipse(0, -E, H, H);
  rotate(TWO_PI/3);
  
  fill(bgcol);//big hole
  ellipse(0, -F, G, G);
  rotate(TWO_PI/3);
  ellipse(0, -F, G, G);
  rotate(TWO_PI/3);
  ellipse(0, -F, G, G);
  rotate(TWO_PI/3);
  
  rectMode(CENTER);//cut top
  rect(0, -F-G/2, C, C);
  rotate(TWO_PI/3);
  rect(0, -F-G/2, C, C);
  rotate(TWO_PI/3);
  rect(0, -F-G/2, C, C);
  rotate(TWO_PI/3);
  
  noFill();//middle ring
  stroke(col);
  strokeCap(SQUARE);
  strokeWeight(B);
  ellipse(0, 0, (E-A+B/2)*2, (E-A+B/2)*2);
  
  stroke(bgcol);//cut ring
  strokeWeight(A);
  ellipse(0, -F, G-A, G-A);
  rotate(TWO_PI/3);
  ellipse(0, -F, G-A, G-A);
  rotate(TWO_PI/3);
  ellipse(0, -F, G-A, G-A);
  rotate(TWO_PI/3);
  
  noStroke();//draw 3 line cut
  fill(bgcol);
  rect(0, -(F-G/2)/2, A, F-G/2);
  rotate(TWO_PI/3);
  rect(0, -(F-G/2)/2, A, F-G/2);
  rotate(TWO_PI/3);
  rect(0, -(F-G/2)/2, A, F-G/2);
  rotate(TWO_PI/3);
  
  ellipse(0, 0, D, D);//draw center circle
}
