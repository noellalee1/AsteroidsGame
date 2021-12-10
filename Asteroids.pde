class Asteroid extends Floater {
  private double rotSpeed;
  private int num;
  public Asteroid() {
    rotSpeed = 5;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int [corners];
    xCorners = new int[corners];
    yCorners = new int[corners];
    myColor = (255);
    myCenterX = (double)(Math.random()*500);
    myCenterY = (double)(Math.random()*500);
    myXspeed = 1;
    myYspeed = 1; //holds the speed of travel in the x and y directions
    myPointDirection = 0;

    num = (int)(Math.random()*4);
  }
  public float getXrock() {
    return (float) myCenterX;
  }
  public float getYrock() {
    return (float) myCenterY;
  }
  public float setXspeedRock(float newXspeed) {
    myXspeed = newXspeed;
    return (float) myXspeed;
  }
   public float setYspeedRock(float newYspeed) {
    myYspeed = newYspeed;
    return (float) myYspeed;
  }
  public int getNumRock(){
    return num;
  }
  public void move() {
    turn(rotSpeed);
    super.move(); //use move function in super class (Floater)
  }
  public void show ()  //Draws the floater at the current position
  {
    fill(0);
    stroke(myColor);

    if (num == 0) {
      xCorners = new int[] {-11, 7, 13, 6, -11, -7};
      yCorners = new int[] {-8, -8, 0, 10, 8, 0};
    } else if (num == 1) {
      xCorners = new int[] {-14, 14, 26, 14, -14, -26};
      yCorners = new int[] {-20, -20, 0, 20, 20, 0};
    } else if (num == 2) {
      xCorners = new int[] {-14, 14, 26, 14, -14, -26};
      yCorners = new int[] {-20, -26, 0, 20, 26, 0};
    } else if (num == 3) {
      xCorners = new int[] {-7, 7, 13, 7, -7, -13};
      yCorners = new int[] {-10, -10, 0, 10, 10, 0};
    }
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
