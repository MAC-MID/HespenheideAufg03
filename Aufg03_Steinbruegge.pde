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

}


class Point {
  
  public float xPosition;
  public float yPosition;
  color colour;
  
  Point(float xPos, float yPos, color colour){
    this.xPosition = xPos;
    this.yPosition = yPos;
    this.colour = colour;
  }
  
  public void draw(){
    vertex(this.xPosition,this.yPosition);
  }
  
}


class LineAnimation {
  
  ArrayList<Point> points;
  
  float xPosition;
  float yPosition;
  float size;
  float step;

  LineAnimation(float xPos, float yPos, float size, float pointNumber){
    this.xPosition = xPos;
    this.yPosition = yPos;
    this.size = size;
    this.step = 0;
    
    points = new ArrayList<Point>();

      for (float a = 0; a < TWO_PI; a+= TWO_PI/pointNumber){
    
        float xoff = map(cos(a+step1), -1,1,0,4);
        float yoff = map(sin(a+step2), -1,1,0,4);
        
        println(step1);
        
        float r = map(noise(xoff,yoff), 0, 1, 100, 200);
        float x = r*cos(a);
        float y = r*sin(a);
        
        points.add(new Point(x, y, 255));
      }
      
    } 
}
