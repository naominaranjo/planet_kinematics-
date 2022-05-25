public class planet{
  int Radd=0;
  int Rminus=0;
  float radius;
  float mass;
  float g;
  float x, y;
  float dx, dy;
  planet(){
    radius=63;
    mass=(5.97*pow(10,24));
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
  float radCon(float r){
    return (r/10)*pow(10,6);
  }
  void drawPlanet(){
    fill(0);
    ellipse(height/4+radius,width/4+radius, radius*2,radius*2);
    fill(100,200,255);
    stroke(100,200,255);
    rect(width/2,0,width/2,height);
    fill(0);
    
    update(mouseX,mouseY);
    text("RADIUS ("+radCon(radius)+")", (width/2)+40, 100);
    text("MASS ("+mass+")", (width/2)+40, 250);
    fill(255);
    rect(width/2+40,160,30,10);
    rect(width/2+50,150,10,30);
    rect(width/2+150,160,30,10);
    
    rect(width/2+40,310,30,10);
    rect(width/2+50,300,10,30);
    rect(width/2+150,310,30,10);
    fill(0);
    text("PRESS P FOR PROJECTILE SIMULATION", 20,40);
    
  }
  void mouseClicked(){
      if(Radd>0){
        radius*=pow(1.3,Radd);
      }
      if(Rminus>0){
        radius*=pow(0.7,Rminus);
      }
    }
  void update(float x, float y){
    if(RclickPlus()){
      Radd+=1;
    }
    if(RclickMinus()){
      Rminus+=1;
    }
  }
  boolean RclickPlus(){
    return (mouseX>width/2+40 && mouseX<width/2+70
    && mouseY>150 && mouseY<180);
  }
  boolean RclickMinus(){
    return (mouseX>width/2+150 && mouseX<width/2+180
    && mouseY>150 && mouseY<180);
  }
  
}
