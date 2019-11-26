float phase = 0;
float phase2 = 0;

void setup(){
  size(500,500);
  smooth ();
}

void draw(){
  
  //background(0,0,0);
  
  fill (76, 10);
  noStroke ();
  rect (0, 0, width, height);
  
  translate(width/2, height/2);
  stroke(236);
  strokeWeight(0.1);
  noFill();
  
  beginShape();
  for (float a = 0; a < TWO_PI; a+= 0.001){
    
    float xoff = map(cos(a+phase), -1,1,0,4);
    float yoff = map(sin(a+phase2), -1,1,0,4);
    
    float r = map(noise(xoff,yoff), 0, 1, 100, 200);
    float x = r*cos(a);
    float y = r*sin(a);
    vertex(x,y);
  }
  endShape(CLOSE);
  
  phase += 0.005;
  phase += 0.008;
}
