class Star
{
  private float starX, starY;
  private int starColor;
  private float starSpeedX, starSpeedY;
 // private float shipX, shipY;

  public Star() {
    starColor = color ((int)(Math.random()*54)+193, (int)(Math.random()*54)+193, (int)(Math.random()*54)+193);
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    starSpeedX = .1;
    starSpeedY = .1;
  }

  public void show() {
    fill (starColor);
    noStroke();
    ellipse (starX, starY, 2.0, 2.0);
  }
  public float getStarX() {
    return starX;
  }
  public float getStarY() {
    return starY;
  }
  public double getStarSpeedX() {
    return starSpeedX;
  }
  public double getStarSpeedY() {
    return starSpeedY;
  }
  
  public void move(){
    starX += starSpeedX;
    starY += starSpeedY;
    if (starX > 500){
      starX = 0;
    }
    if (starY > 500){
      starY = 0;
    }
  }

  public void moveU()
  {
    starY = starY - starSpeedY;
    if (starY < 0){
      starY = 500;
    }
  }
 
  public void moveR()
  {
    starX = starX - starSpeedX;
    if (starX < 0){
      starX = 500;
    }
  }
}
