public projectile{
  float x, y;
  float theta=0;
  float dx, dy;
  
  public projectile(x1,y1){
    x=x1;
    y=y1;
    dx=0;
    dy=0;
  }
  void Pdraw(){
  
  }
  void launch(float th, int v){
    theta=th;
    dx=v*sin(th);
    dy=v*cos(th);
    move();
  }
  void Pmove(){
    if(x>width ||x<0){
      dx = 0;    
    }
    if(y>height||y<0){
      dy = 0;
    }
    dy -= g;
    x += dx;
    y += dy;
  }

}
