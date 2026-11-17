Star[] sbg = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid> ();
Spaceship you = new Spaceship();
//direction smothing variables
boolean forward = false;
boolean left = false;
boolean right = false;
boolean back = false;
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < 200; i++){
    sbg[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < 200; i++){
    sbg[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist(you.getX(), you.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if(d < 20){
      rocks.remove(i);
      i--;
    }
  }
  if(forward == true){
    you.accelerate(0.5);
  }if(back == true){
     you.accelerate(-0.5);
  }if(left == true){
    you.turn(-5);
  }if(right == true){
    you.turn(5);
  }
  you.move();
  you.show();
}
void keyPressed(){
  if(key == 'w'){
    forward = true;
  }if(key == 's'){
     back = true;
  }if(key == 'a'){
    left = true;
  }if(key == 'd'){
    right = true;
  }if(key == 'h'){
    you.hyper();
  }
}
void keyReleased(){
  if(key == 'w'){
    forward = false;
  }if(key == 's'){
     back = false;
  }if(key == 'a'){
    left = false;
  }if(key == 'd'){
    right = false;
  }
}
