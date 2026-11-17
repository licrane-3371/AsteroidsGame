class Asteroids extends Floater{
  private double rotSpeed; 
  public Asteroids(){
    corners = 7;
    xCorners = new int[]{-9, 7, 13, 11, 6, -11, 5};
    yCorners = new int[]{-8, -7, 0, 5, 10, 8, 0};
    rotSpeed = 1.0;
  }
  public move(){
    turn(rotSpeed);
    super.move();
  }
}
