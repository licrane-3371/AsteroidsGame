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
  public void setXspeed(double x){
    myXspeed = x;
  }
    public void move ()   //move the floater in the current direction of travel
  { 
    myXspeed *= 0.99;
    myYspeed *= 0.99;
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }
  public void hyper(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }
}
