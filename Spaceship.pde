class Spaceship extends Floater
{
  //your code here

  public Spaceship() {
    corners = 3;
    xCorners = new int[] {-10, 16, -10};
    yCorners = new int[] {-10, 0, 10};
    myCenterX = 250;
    myCenterY = 250;

    myPointDirection = 0;

    myColor = color (255);

    myXspeed = 0;
    myYspeed = 0;
  }

  public void hyperspace () {
    myXspeed = 0;
    myYspeed = 0;

    myCenterX = (float)(Math.random()*500);
    myCenterY = (float)(Math.random()*500);
    myPointDirection = (float)(Math.random()*360);
  }

  public void setSpeed(int x, int y) {
    myXspeed = x;
    myYspeed = y;
  }
}
