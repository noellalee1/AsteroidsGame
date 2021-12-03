class Bullet extends Floater {
  public Bullet (Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getYspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    myColor = (255);
    accelerate(.6);
  }
  public void show() {
    fill(myColor);   
    stroke(myColor);   
    ellipse ((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
