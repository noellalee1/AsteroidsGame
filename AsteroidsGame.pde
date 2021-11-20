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
}
double i = 0;
double d = 0;
void keyPressed() {

  if ((key == 'W' || key == 'w')) {
    i+=.01;
  } else if ((key =='S' || key == 's')) {
    i -=.01;
    
  } 
  
  if (key == 'f') {
    i=0;
    bob.setSpeed(0, 0);
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

//change keybinds: space = to shoot (for later), 
