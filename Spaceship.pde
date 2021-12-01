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
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    

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


    int[] rxCorners = new int[] {-20, -20, -18, -18, -16, -16, -14, -14, -12, -12};
    int[] ryCorners = new int[] {-2, -2, -4, 4, -6, 6, -8, 8, -10, 10, };


    if ((key == 'W' || key == 'w')) {
      fill (255, 0, 0);
      stroke(255, 0, 0);
      beginShape();
      for (int nI = 0; nI < rxCorners.length; nI++)
      {
        vertex(rxCorners[nI], ryCorners[nI]);
      }
      endShape(CLOSE);
    } 

    if ((key =='S' || key == 's')) {
      fill (0, 0, 255);
      stroke(0, 0, 255);
      beginShape();
      for (int nI = 0; nI < rxCorners.length; nI++)
      {
        vertex(rxCorners[nI], ryCorners[nI]);
      }
      endShape(CLOSE);
    } 

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
