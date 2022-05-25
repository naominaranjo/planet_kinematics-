static char mode = 'C';
static boolean start= false;
planet custom;

void setup(){
    size(800,500);
    
}
void draw(){
  background(255);
  planet pl=new planet();
  if (mode=='C'){
    pl.drawPlanet(); //draws planet creation screen
  }
  if (mode=='_'){
    pl.drawInst(); //draws instruction screen for finished planet
  }
  
  if(start==true){
    pl.move();
  }
} 
 
 void mouseClicked(){
  if(pl.Radd>0&&){
    pl.radius*=pow(1.3, Radd);
    Radd=0;
  }
  if(pl.Rminus>0){
    pl.radius*=pow(0.7, Rminus);
    Rminus=0;
  }
  if(DONE==True){
    mode= '_'; //when done is pressed
  }
 }
