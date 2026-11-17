class Spaceship extends Floater{
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
    myColor = 255;
  }
    public void move (){ 
    myXspeed *= 0.95;
    myYspeed *= 0.95;
    super.move();   
  }
  public void hyper(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = myYspeed = 0;
    myPointDirection = Math.random()*360;
  }
}
