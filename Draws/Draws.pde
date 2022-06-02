static char mode = 'C';
planet pl=new planet();
static boolean start= false;

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
}
void draw(){
  background(255);
  
  if (mode=='C'){
    pl.drawPlanet(); //draws planet creation screen
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
    projectile p= pl.makeProj(20,100);
    p.Pdraw();
  }
  if(start==true){
    //pl.move();
  }
} 
 
 
