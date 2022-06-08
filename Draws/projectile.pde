public class projectile{
  float x, y;
  float dy,dx;
  
  public projectile(float th,float v,float hi){
    x=40+30*cos(th);
    y=400-30*sin(th)-hi;
    dx=v*cos(th);
    dy=v*sin(th);
  }
  
  void Pdraw(){
    fill(0);
    text("UP to increase velocity, RIGHT to decrease* velocity", 40,20);
    text("+ to increase height, - to decrease height", 350,20);
    text("LEFT to increase theta, RIGHT to decrease theta", 40,40);
    text("SPACE to shoot", 40,60);
    text("INITIAL VELOCITY: "+v1,50,445);
    text("INITIAL ANGLE: "+(theta*180/PI),50,430);
    text("INITIAL HEIGHT: "+h,50,460);
    //text("dx="+dx,100,100);
    //text("dy="+dy,100,120);
    //text("g="+pl.g,100,140);
    fill(200,0,0);
    rect(780,250,20,40);
    
    stroke(0);
    line(0,400,width,400);
    line(40,400-h,40+30*cos(theta),400-h-30*sin(theta));
    
  }
  void drawP(){
    fill(100,200,255,150);
    ellipse(x,y,20,20);
    
  }
  void launch(){
    Pmove();
  }
  void Pmove(){
    x += dx*.7;
    y -= dy*.7;
    dy -= pl.g/10;
    if(x>760&&y>250&&y<290&&start&&dx>0){
      achieve=true;
    }
    if(x+dx*.7>=width||x+dx*.7<40){
      dx=0;
    }
    if(y-dy*.7>=400-10){
      dy=0;
      dx=0;
    }
    if(y-dy*.7<=50){
      dy=-dy;
    }
   
    
  }

}
