boolean info;

void drawInfo(){
  fill(0);
  textSize(19);
  text("RADIUS: "+pl.radCon(pl.radius)+" m", 50,50);
  text("MASS: "+pl.mass + " kg", 50,100);
  text("ACCELERATION DUE TO GRAVITY: "+pl.g + " m/s^2", 50,150);
  
}
