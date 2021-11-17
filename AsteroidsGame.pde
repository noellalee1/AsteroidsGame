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
  bob.showShip();
  
 
  bob.move();
  for (int i = 0; i < sally.length; i++) {
    sally[i].show();
  }
}
double i = 0;
double d = 0;
void keyPressed() {
  
  if ((key == 'D' || key == 'd')) {
    i+=.1;
    bob.accelerate(i);
  } else if ((key =='A' || key == 'a')) {
   i-=.1;
   bob.accelerate(i);
  } else if ((key =='H' || key == 'h')){
     bob.hyperspace();
  }else if ((key =='R' || key == 'r')){
     bob.hyperspace();
}
}
