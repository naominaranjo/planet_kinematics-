public class planet{
  boolean Radd=false;
  boolean Rminus=false;
  boolean Madd=false;
  boolean Mminus=false;
  float radius;
  float mass;
  float g;
  boolean DONE;
  boolean PLANET;
  planet(){
    radius=63;
    mass=(5.97*pow(10,24));
  }
  float radCon(float r){
    return (r/10)*pow(10,6);
  }
  void drawPlanet(){
    textSize(12);
    update(mouseX,mouseY);
    fill(100,200,255);
    stroke(100,200,255);
    rect(width/2,0,width/2,height);
    fill(100,200,255);
    rect(40,40,40,20);
    fill(0);
    text("DONE", 40,50);
    text("RADIUS ("+radCon(radius)+")", (width/2)+40, 100);
    text("MASS ("+mass+")", (width/2)+40, 250);
    g = ((6.67 * pow(10, -11)) * mass)/(pow(radCon(radius),2));
    //print(g);
    fill(255);
    rect(width/2+40,160,30,10);
    rect(width/2+50,150,10,30);
    rect(width/2+150,160,30,10);
    
    rect(width/2+40,310,30,10);
    rect(width/2+50,300,10,30);
    rect(width/2+150,310,30,10);
    fill(0);
    ellipseMode(CENTER);
    //ellipse(height/4+radius,width/4+radius, radius*2,radius*2);
    ellipse(height/4,200, radius*2,radius*2);
  }
  void drawInst(){
    update(mouseX,mouseY);
    fill(0);
    text("PRESS P TO USE PROJECTILE SIMULATION",50,50);
    text("PRESS I TO USE INCLINED PLANE SIMULATION",50,70);
    text("PRESS W TO SEE STATS OF YOUR PLANET",50,90);
    text("PRESS C TO EDIT OR CREATE A NEW PLANET",50,110);
    rect(50,400,50,40);
    fill(100,200,255);
    text("BACK", 60,420);
  }
  void update(float x, float y){
    if(RclickPlus()){
      Radd=true;
    }
    if(RclickMinus()){
      Rminus=true;
    }
    if(clickD()){
      DONE=true;
      PLANET=false;
    }
    if(clickP()&&DONE){
      PLANET=true;
      DONE=false;
    }
    if(MclickPlus()){
      Madd=true;
    }
    if(MclickMinus()){
      Mminus=true;
    }
  }
  boolean clickD(){
    if(mode=='C'){
      return(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<60);
    }
    return false;
  }
  boolean RclickPlus(){
    return (mode=='C'&&mouseX>width/2+40 && mouseX<width/2+70
    && mouseY>150 && mouseY<180);
  }
  boolean RclickMinus(){
    return (mode=='C'&&mouseX>width/2+150 && mouseX<width/2+180
    && mouseY>150 && mouseY<180);
  }
  boolean clickP(){
    if(mode=='_'){
      return (mouseX>50 && mouseX<100&&mouseY>400&&mouseY<440);
    }
    return false;
  }
  boolean MclickPlus(){
    return (mode=='C'&&mouseX>width/2+40 && mouseX<width/2+70
    && mouseY>310 && mouseY<340);
  }
  boolean MclickMinus(){
    return (mode=='C'&&mouseX>width/2+150 && mouseX<width/2+180
    && mouseY>300 && mouseY<330);
  }
}
