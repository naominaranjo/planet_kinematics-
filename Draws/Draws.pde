static char mode = 'C';
planet pl=new planet();
static boolean start= false;
planet custom;

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
  if(pl.DONE==true){
    mode= '_'; //when done is pressed
  }
  if(pl.PLANET==true){
    mode='C';
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
  
  if(start==true){
    pl.move();
  }
} 
 
 
