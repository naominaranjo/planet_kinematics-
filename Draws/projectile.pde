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
  public projectile(x1,y1,v1,th){
    x=x1;
    y=y1;
    theta=th;
    dx=0;
    dy=0;
  }
  void launch(float th, int v){
    theta=th;
  }
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
