public class incline{
  float x=800-10; float diff=10*tan(theta);
  float y=h+diff-10;
  float dy,dx;
  float grava;
  public incline(float t){
    grava=pl.g;
    dy=grava*sin(t);
    dx=grava*cos(t);
  }
  void drawSlope(){
    fill(0);
    text("UP to increase friction, RIGHT to decrease friction", 40,20);
    text("LEFT to increase theta, RIGHT to decrease theta", 40,40);
    text("SPACE to move", 40,60);
    text("INITIAL ANGLE: "+(theta*180/PI),50,430);
    text("FRICTIONAL COEFFICIENT: "+friction,50,460);
    
    stroke(0);
    line(0,400,width,400);
    line(400,400,width,h);
  }
  void drawO(){
    fill(100,200,255,150);
    ellipse(x,y,20,20);
    text(""+grava,100,100);
    text(""+dy,100,110);
    text(""+dx,100,120);
  }
  void imove(){
    //x -= dx;
    y += dy;
    x -= dx;
    dx-=dx*friction*0.05;
    dy-=dy*friction*0.05;
    if(dy<=0.001){dy=0;}if(dx<=0.01){dx=0;}
    if(x<=x-dx){
      dx=0;
    }
    if(y>=400-10){
      dy=0;
    }
  }

}
