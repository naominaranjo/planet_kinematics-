public class incline{
  float x, y;
  float dy,dx;
  public incline(float t, float mu){
    
  
  }
  void drawSlope(){
    
    stroke(0);
    line(0,400,width,400);
    line(400,400,width,tan(theta)*width/2);
  }

}
