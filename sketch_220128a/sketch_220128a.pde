
PFont font;

public void setup(){
  System.out.println("hello world");
  //size(1980, 1080);
  //size(1400, 700);
  fullScreen();
  background(0, 0, 0);
  font = createFont("Arial", 16, true);

  
}



public void draw(){
  println("hello");
   textFont(font);
   C ourC = new C(width/2, height/2, height/1.5, height/3);
   
   int scale = 7;
   
   for(int y = 0; y < height/scale; y++){
     for(int x = 0; x < width/scale; x++){
       if (ourC.inC(x * scale, y * scale)){
         //ellipse(x * 2, y*2, 10, 10);
         if (random(0.0, 10.0) > 9){
           fill(0, 0, 0);
         }else{
           fill(255, 255, 255);
         }
         if(frameCount % 20 == 0){
           text("Hello", x * scale, y * scale);
         }
         
       }else{
         if (random(0.0, 10.0) > 9){
           fill(0, 255, 0);
           
         }else{
           fill(0, 0, 0);
         }
         if (frameCount % 20 == (int) random(0.0, 20.0)){
           text("Hello", x * scale, y * scale);
         }
         
       }
       
     }
   }
   
   
  
}

public void printWordOnScreen(String word, float verticalPos, float horizontalPos){
  text(word, verticalPos, horizontalPos);
}

class C{
  public float midpointX, midpointY, outDiameter, innerDiameter;
  
  public C(float midpointX, float midpointY, float outDiameter, float innerDiameter){
    this.midpointX = midpointX;
    this.midpointY = midpointY;
    this.outDiameter = outDiameter;
    this.innerDiameter = innerDiameter;
  }
  
  public boolean inC(float x, float y){
    if (x > midpointX + outDiameter/5){
      return false;
    }
    
    if (distFromCenter(x, y) > outDiameter/2){
      return false;
    }
    
    if (distFromCenter(x, y) < innerDiameter/2){
      return false;
    }
    
    return true;
    
  }
  
  public float distFromCenter(float x, float y){
    return (float) (sqrt(pow(x - midpointX, 2) + pow(y - midpointY, 2))); 
  }
}
