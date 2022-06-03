char mode = 'C';
float theta=PI/6;
  float v1;
  float h=0;
planet pl=new planet();
boolean start= false;
planet custom;
projectile p= new projectile(theta,v1,h);
boolean achieve=false;
void setup(){
    size(800,500);
    
}
void mouseClicked(){
  if(pl.Radd){
    pl.radius+= 5;
    pl.Radd=false;
  }
  if(pl.Rminus){
    pl.radius-= 5;
    pl.Rminus=false;
  }
  if(pl.Madd){
    pl.mass+= .5*pow(10,24);
    pl.Madd=false;
  }
  if(pl.Mminus){
    pl.mass-=  .5*pow(10,24);
    pl.Mminus=false;
  }
  if(pl.DONE==true){
    mode= '_'; //when done is pressed
  }
  if(pl.PLANET==true){
    mode='C';
  }
 }
void keyPressed(){
  if(key=='w'){
    mode='W';
  }
  if(key=='p'&&mode!='C'){
    mode='P';
  }
  if (key=='c'){
    mode='C';
  }
  if (mode=='P'&&key == CODED&&!start) {
    if (keyCode == UP) {
      v1+=2;
      p.dx=v1*cos(theta);
      p.dy=v1*sin(theta);
    } else if (keyCode == DOWN&&v1>2) {
      v1-=2;
      p.dx=v1*cos(theta);
      p.dy=v1*sin(theta);
    }
    if(keyCode == LEFT&&theta<=PI/2-.1) {
      theta+=.1;
      p.dx=v1*cos(theta);
      p.dy=v1*sin(theta);
    } else if (keyCode == RIGHT&&theta>=.1) {
      theta-=.1;
      p.dx=v1*cos(theta);
      p.dy=v1*sin(theta);
    }
  }
  if (mode=='P'&&!start){
    if(key=='+'&& h<=145){
      h+=5;
      p.y=400-30*sin(theta)-h;
    }
    if(key=='-'&& h>=5){
      h-=5;
      p.y=400-30*sin(theta)-h;
    }
  }
  if(mode=='P'&&key==' '){
    start=!start;
  }
}
void draw(){
  background(255);
  
  if (mode=='C'){
    pl.drawPlanet(); 
  if(mode=='P'&&start){
    p.Pdraw();
  }//draws planet creation screen
  }
  else if (mode=='_'){
    pl.drawInst(); //draws instruction screen for finished planet
  }
  else if(mode=='W'){
    pl.PLANET=false;
    pl.DONE=false;
    drawInfo();
  }
  else if(mode=='P'){
    pl.PLANET=false;
    pl.DONE=false;
    p.Pdraw();
    if(start){
      p.Pmove();
    }
    else{
      p.x=40+30*cos(theta);
      p.y=400-30*sin(theta)-h;
      p.dx=v1*cos(theta);
      p.dy=v1*sin(theta);
    }
    if (achieve&&start){
      fill(255,255,0,200);
      ellipse(400,250,100,100);
      fill(0);
      ellipse(400-25,250-10,20,20);ellipse(400+25,250-10,20,20);
      fill(255);
      ellipse(400-20,250-10,5,5);ellipse(400+30,250-10,5,5);
      noFill();
      arc(400,265, 40, 40, 0,PI);
    }
    p.drawP();
    
    
  }
  
} 
 
 
