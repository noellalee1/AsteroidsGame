class Spaceship extends Floater  
{   
  //your code here

  public Spaceship() {
    corners = 3;
    xCorners = new int[] {-10, 16, -10};
    yCorners = new int[] {-10, 0, 10};
    myCenterX = 250; 
    myCenterY = 250;

    myColor = color (255);
    
    myXspeed = 0;
    myYspeed = 0;
  }
  public void showShip() {
    fill (myColor);
    triangle((float)(myCenterX+xCorners[0]), 
      (float)(myCenterY+yCorners[0]), 
      (float)(myCenterX+xCorners[1]), 
      (float)(myCenterY+yCorners[1]), 
      (float)(myCenterX+xCorners[2]), 
      (float)(myCenterY+yCorners[2]));
  }
  
  public void hyperspace (){
  myXspeed = 0;
  myYspeed = 0;
  
  myCenterX = (float)(Math.random()*500);
  myCenterY = (float)(Math.random()*500);
  }
}
