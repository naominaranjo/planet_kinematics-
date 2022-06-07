boolean info;

void drawInfo(){
  fill(0);
  textSize(19);
  text("RADIUS: "+pl.radCon(pl.radius), 50,50);
  text("MASS: "+pl.mass, 50,100);
  text("ACCELERATION DUE TO GRAVITY: "+pl.g, 50,150);
  
}
