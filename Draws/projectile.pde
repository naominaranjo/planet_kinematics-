public class projectile{
  float x, y;
  float theta=0;
  float dx, dy;
  
  public projectile(float x1,float y1){
    x=x1;
    y=y1;
    dx=0;
    dy=0;
  }
  void Pdraw(){
    stroke(0);
    line(0,400,800,400);
  }
  void launch(float th, int v){
    theta=th;
    dx=v*sin(th);
    dy=v*cos(th);
    Pmove();
  }
  void Pmove(){
    if(x>width ||x<0){
      dx = 0;    
    }
    if(y>height||y<0){
      dy = 0;
    }
    x += dx;
    y += dy;
    dy -= pl.g;
  }

}
