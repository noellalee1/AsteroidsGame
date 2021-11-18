//your variable declarations here
Spaceship bob;
Star[] sally;

public void setup() 
{
  size(500, 500);
  bob = new Spaceship();
  sally = new Star[100];
  for (int i = 0; i < sally.length; i++) {
    sally[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background (0);
  bob.show();


  bob.move();
  for (int i = 0; i < sally.length; i++) {
    sally[i].show();
  }
  if (bob.getCenterX() > width) {
    for (int i = 0; i < sally.length; i++) {
      sally[i].move();
    }
  }
}
double i = 0;
void keyPressed() {

  if ((key == 'W' || key == 'w')) {
    i+=.1;
  } else if ((key =='S' || key == 's')) {
    i = -.1;
  } else if (key == ' ') {
    bob.setXspeed(0);
    bob.setYspeed(0);
  }
  bob.accelerate(i);

  if ((key =='H' || key == 'h')) {
    bob.hyperspace();
  } 

  if ((key =='D' || key == 'd')) {
    bob.turn(5);
  } else if ((key =='A' || key == 'a')) {
    bob.turn(-5);
  }
}
