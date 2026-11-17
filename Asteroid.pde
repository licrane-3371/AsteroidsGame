class Asteroid extends Floater{
  private double rotSpeed; 
  public Asteroid(){
    corners = 7;
    xCorners = new int[]{-13, 4, 9, 17, 10, -13, -9};
    yCorners = new int[]{-12, -9, -11, 4, 14, 12, 4};
    rotSpeed = 1.0;
    myXspeed = Math.random();
    myYspeed = Math.random();
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myColor = 150;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }

}
