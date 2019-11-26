RoundObject circles[] = new RoundObject[100];

int counter = 0;
boolean draw = false;

float step1 = 0;
float step2 = 0;

void setup(){
  size(600,600);
  smooth ();
  frameRate(30);
  
  stroke(236);
  strokeWeight(0.2);
  noFill();
  
}

void draw(){
  
  createCircles ();
  
  
  step1 += 0.005;
  step2 += 0.008;

}

void createCircles () {
  
  circles[0] = new RoundObject (width/2, height/2, step1, step2);
}


class Point {
  
  public float xPosition;
  public float yPosition;
  color colour;
  
  public void draw(){
    vertex(this.xPosition,this.yPosition);
  }
}



class RoundObject {
  
  RoundObject(float positionX, float positionY, float step1, float step2){
    translate(positionX, positionY);
    
    beginShape();
      for (float a = 0; a < TWO_PI; a+= 0.001){
    
        float xoff = map(cos(a+step1), -1,1,0,4);
        float yoff = map(sin(a+step2), -1,1,0,4);
        
        println(step1);
        
        float r = map(noise(xoff,yoff), 0, 1, 100, 200);
        float x = r*cos(a);
        float y = r*sin(a);
        

      }
    endShape(CLOSE);
   
  }
  
}
