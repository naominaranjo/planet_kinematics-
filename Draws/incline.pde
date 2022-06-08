public class incline{
  float x=800-10; float diff=10*tan(theta);
  float y=h+diff-10;
  float dy,dx;
  float fric;
  float fricx,fricy;
  public incline(float t, float mu){
    fric=mu;
    float fricforce=pl.g*mu*sin(t);
    dy=pl.g*sin(t)*sin(t);
    dx=pl.g*sin(t)*cos(t);
  }
  void drawSlope(){
    fill(0);
    text("UP to increase friction, RIGHT to decrease friction", 40,20);
    text("LEFT to increase theta, RIGHT to decrease theta", 40,40);
    text("SPACE to move", 40,60);
    text("INITIAL ANGLE: "+(theta*180/PI),50,430);
    text("FRICTIONAL COEFFICIENT: "+fric,50,460);
    text("x "+x,100,100);
    stroke(0);
    line(0,400,width,400);
    line(400,400,width,h);
  }
  void drawO(){
    fill(100,200,255,150);
    ellipse(x,y,20,20);
  }
  void imove(){
    //x -= dx;
    y += dy*.7;
    x=(y/tan(theta))+width/2;
    dy += pl.g/10;
    if(x<=x-dx){
      dx=0;
    }
    if(y>=400-10){
      dy=0;
    }
  }

}
