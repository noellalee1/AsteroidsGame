class Star //note that this class does NOT extend Floater
{
  //your code here
  private int starX, starY;
  private int starColor;

  public Star() {
    starColor = color ((int)(Math.random()*54)+193, (int)(Math.random()*54)+193, (int)(Math.random()*54)+193);
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
  }

  public void show() {
    fill (starColor);
    noStroke();
    ellipse (starX, starY, 3, 3);
  }
}
