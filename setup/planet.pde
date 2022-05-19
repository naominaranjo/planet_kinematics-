public class planet{
  float radius;
  float mass;
  float g;
  float x, y;
  float dx, dy;
  
  void move(){
    if(x>width ||x<0){
      dx = 0;    
    }
    if(y>height||y<0){
      dy = 0;
    }
    if (mode == 'P'){
      dy -= g;
      
      
    }
    x += dx;
    y += dy;
  }
  
  
  
}
