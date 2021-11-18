class Star //note that this class does NOT extend Floater
{
  //your code here
  private int starX, starY;
  private int starColor;
  private double starSpeed;

  public Star() {
    starColor = color ((int)(Math.random()*54)+193, (int)(Math.random()*54)+193, (int)(Math.random()*54)+193);
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    starSpeed = 0;
  }

  public void show() {
    fill (starColor);
    noStroke();
    ellipse (starX, starY, 5, 5);
  }



  //if spaceship reaches edge of screen, move the stars
  public void move(double sAmount) {
    double dRadians = myPointDirection*(Math.PI/180);
    starSpeed += ((sAmount) * Math.cos(dRadians));
    
    /* make myPointDirection = the myPointDirection of the spaceship,
    make sAmount = dAmount
    need a lot of getters
    need a lot of setters to stop the stars from moving when the spaceship stops
    */
  }
}
