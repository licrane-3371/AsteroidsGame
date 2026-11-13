Star[] sbg = new Star[200];
Spaceship you = new Spaceship();
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < 200; i++){
    sbg[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < 200; i++){
    sbg[i].show();
  }
  you.move();
  you.show();
}
void keyPressed(){
  if(key == 'w'){
    you.accelerate(1);
  }if(key == 's'){
     you.myXspeed /= 2;
     you.myYspeed /= 2;
  }if(key == 'a'){
    you.turn(-30);
  }if(key == 'd'){
    you.turn(30);
  }if(key == 'h'){
    you.hyper();
  }
}
