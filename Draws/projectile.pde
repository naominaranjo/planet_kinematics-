public class projectile{
  float x, y;
  float theta=PI/6;
  float v1;
  float dy,dx;
  
  public projectile(float x1,float y1){
    v1=0;
    x=x1;
    y=y1;
    dx=v1*sin(theta);
    dy=v1*cos(theta);
  }
  
  }
  void Pdraw(){
    fill(0);
    text("UP to increase velocity, RIGHT to decrease* velocity", 40,20);
    text("*decreasing is invalid when initial velocity is 0",40,30);
    text("LEFT to increase theta, RIGHT to decrease theta", 40,50);
    text("INITIAL VELOCITY: "+v1,50,420);
    text("INITIAL ANGLE: "+(theta*180/PI),50,410);
    stroke(0);
    line(0,400,width,400);
    
    line(40,400,40+30*cos(theta),400-30*sin(theta));
    fill(100,200,255,150);
    ellipse(40+30*cos(theta),400-30*sin(theta),20,20);
  }
  void launch(){
    dx=v1*sin(theta);
    dy=v1*cos(theta);
    Pmove();
  }
  void Pmove(){
    if(x>width ||x<0){
      dx = 0;    
    }
    if(y>height||y<0){
      dy = 0;
    }
    else{
      x += dx;
      y += dy;
      dy += pl.g;
    }
  }

}
