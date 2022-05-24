static char mode = 'C';
static boolean start= false;
planet custom;

void setup(){
    size(800,500);
    
}
void mouseClicked(){
  start=true;
}
void draw(){
  background(255);
  planet pl=new planet();
  if (mode=='C'){
    pl.drawPlanet();
  }
  
  if(start==true){
    pl.move();
  }
  
}
