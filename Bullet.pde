class Bullet extends Floater {
  public Bullet (Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getYspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    myColor = (255);
    accelerate(6.0);
  }
  public float getX() {
    return (float) myCenterX;
  }
  public float getY() {
    return (float) myCenterY;
  }
  public int setColor(int col){
    myColor = col;
    return myColor;
  }
  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse ((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move ()   //move the floater in the current direction of travel
  {
    //change the x and y coordinates by myXspeed and myYspeed
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
