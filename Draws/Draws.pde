static char mode = 'C';
planet pl=new planet();
static boolean start= false;
planet custom;
projectile p= new projectile(40,400);
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
  if (mode=='P'&&key == CODED) {
    if (keyCode == UP) {
      p.v1+=2;
    } else if (keyCode == DOWN&&p.v1>2) {
      p.v1-=2;
    }
    if (keyCode == LEFT) {
      p.theta+=5*(180/PI);
    } else if (keyCode == RIGHT&&p.theta>5*(180/PI)) {
      pp.theta-=5*(180/PI);
    }
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
    pl.PLANET=false;
    pl.DONE=false;
    
    if(start==true){
      p.launch();
    }
    p.Pdraw();
  }
  
} 
 
 
