char mode = 'C';
float theta=PI/6;
float friction;
float v1;
float h=0;
planet pl=new planet();
boolean start= false;
planet custom;
projectile p= new projectile(theta,v1,h);
incline f= new incline(theta);
boolean achieve=false;

void setup(){
    size(800,500);
    
}
void mouseClicked(){
  if(pl.Radd){
    pl.radius+= 5;
    pl.Radd=false;
  }
  if(pl.Rminus&&pl.radius>=15){
    pl.radius-= 5;
    pl.Rminus=false;
  }
  if(pl.Madd){
    pl.mass+= 1*pow(10,23);
    pl.Madd=false;
  }
  if(pl.Mminus&&pl.mass>=.5*pow(10,23)){
    pl.mass-= 1*pow(10,23);
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
  if(key=='w'&&mode!='C'){
    mode='W';
  }
  if(key=='p'&&mode!='C'){
    mode='P';
    theta=PI/6;
    start=false;
    h=0;
  }
  if(key=='i'&&mode!='C'){
    mode='I';
    h=0;
    theta=atan((400-h)/(width/2));
    start=false;
  }
  if (key=='c'){
    mode='C';
  }
  if (mode=='I'&&key == CODED&&!start) {
    if(keyCode == RIGHT&&h<=400-5) {
      h+=5;
    } if (keyCode == LEFT&&h>=5) {
      h-=5;
    }
    if(keyCode == UP&&friction<=.8) {
      friction+=0.05;
    } if (keyCode == DOWN&&friction>=.10) {
      friction-=0.05;
    }
    theta=atan((400-h)/(width/2));
    float diff=10*tan(theta);
    f.y=h+diff-10;
    f.dy=pl.g*sin(theta)*sin(theta);
    f.dx=pl.g*sin(theta)*cos(theta);
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
  if((mode=='P'||mode=='I')&&key==' '){
    start=!start;
  }
}

void draw(){
  background(255);
  
  if (mode=='C'){
    pl.DONE=false;
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
  else if(mode=='I'){
    pl.PLANET=false;
    pl.DONE=false;
    f.drawSlope();
    f.drawO();
    if(start){
      f.imove();
    }
    else{
      f.x=800-10;
      float diff=10*tan(theta);
      f.y=h+diff-10;
      f.dy=pl.g*sin(theta)*sin(theta);
      f.dx=pl.g*sin(theta)*cos(theta);
    }
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
    
    p.drawP();
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
    if (!start){achieve=false;}
    
  }
  
} 
 
 
