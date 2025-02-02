Spaceship bob;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList<Bullet>();
Star[] sally;
int point = 0;
float starDist;
int lvl = 0;

public void setup()
{
  size(500, 500);
  bob = new Spaceship();
  sally = new Star[300];
  for (int i = 0; i < sally.length; i++) {
    sally[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    rock.add(new Asteroid());
  }
}
public void draw()
{

  background (0);
  fill(255);
  textSize(25);
  text ("Points:" + point, 10, 25);

  if (point < 20) {
    text("Level 1", 400, 25);
    lvl = 1;
  } else if (point < 40) {
    text("Level 2", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (255, 0, 0));
    }
    lvl = 2;
  } else if (point < 60) {
    text("Level 3", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (255, 153, 0));
    }
    lvl = 3;
  } else if (point < 80) {
    text("Level 4", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (255, 242, 0));
    }
    lvl = 4;
  } else if (point < 100) {
    text("Level 5", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (0, 255, 55));
    }
    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).setXspeedRock (2);
    }
    lvl = 5;
  } else if (point < 120) {
    text("Level 6", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (0, 255, 238));
    }
    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).setXspeedRock (2);
    }
    lvl = 6;
  } else if (point < 140) {
    text("Level 7", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (0, 149, 255));
    }
    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).setXspeedRock (3);
      rock.get(i).setYspeedRock(3);
    }
    lvl = 7;
  } else if (point < 160) {
    text("Level 8", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (132, 0, 255));
    }
    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).setXspeedRock (3);
      rock.get(i).setYspeedRock(3);
    }
    lvl = 8;
  } else if (point < 180) {
    text("Level 9", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (204, 0, 255));
    }
    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).setXspeedRock (4);
      rock.get(i).setYspeedRock(4);
    }
    lvl = 9;
  } else if (point < 200) {
    text("Level 10", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color (255, 0, 179));
    }
    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).setXspeedRock (4);
      rock.get(i).setYspeedRock(4);
    }
    lvl = 10;
  } else {
    text("Level 11", 400, 25);
    for (int i = 0; i < shot.size(); i++) {
      shot.get(i).setColorshot(color ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
    }
    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).setXspeedRock (10);
      rock.get(i).setYspeedRock(10);
    }
    lvl = 11;
  }

  bob.show();
  bob.move();

  for (int i = 0; i < sally.length; i++) {
    sally[i].show();
    sally[i].move();
  }

  /*if (){ //if ship moves up
   sally[i].moveU();
   } else if (){
   sally[i].moveR();
   } else if (){
   
   } else if (){
   
   } else {
   
   }
   }*/

  if (shape == 0) {
    int[] newNumX = new int[] {-10, 16, -10, -10};
    int[] newNumY = new int[] {-10, 0, 10, 0};
    bob.setCornersX(newNumX);
    bob.setCornersY(newNumY);
  } else if (shape == 1) {
    int[] newNumX = new int[] {-10, 16, -10, -2};
    int[] newNumY = new int[] {-10, 0, 10, 0};
    bob.setCornersX(newNumX);
    bob.setCornersY(newNumY);
  }

  if (shipColor == 0) {
    bob.setColorShip(color(255));
  } else if (shipColor == 1) {
    bob.setColorShip(color(255, 0, 0));
  } else if (shipColor == 2) {
    bob.setColorShip(color(0, 255, 0));
  } else if (shipColor == 3) {
    bob.setColorShip(color(0, 136, 255));
  }
  
  

    for (int i = 0; i < rock.size(); i++) {
      rock.get(i).move();
      rock.get(i).show();
      float fb = dist(bob.getX(), bob.getY(), rock.get(i).getXrock(), rock.get(i).getYrock());
      int n = rock.get(i).getNumRock();
      if (n==0 || n==3) {
        if (fb < 15) {
          rock.remove(i);
          point-=3;
        }
      } else if (n==1 || n==2) {
        if (fb < 30) {
          rock.remove(i);
          point-=3;
        }
      }
    }

    if (keyPressed) {
      if (key == 'h' || key =='H') {
        for (int i = 0; i < rock.size(); i++) {
          rock.remove(i);
        }
      } else {
        if (rock.size() < 10) {
          rock.add(new Asteroid());
        }
      }
    }

    for (int j = 0; j < shot.size(); j++) {
      shot.get(j).show();
      shot.get(j).move();
      if (shot.get(j).getXshot() > 600 || shot.get(j).getXshot() < 0 || shot.get(j).getYshot() < 0 || shot.get(j).getYshot() > 600) {
        shot.remove(j);
        j--;
      }
    }
    for (int j = 0; j < rock.size(); j++) {
      for (int i = 0; i < shot.size(); i++) {
        float fs = dist(shot.get(i).getXshot(), shot.get(i).getYshot(), rock.get(j).getXrock(), rock.get(j).getYrock());

        if (fs < 20) {
          rock.remove(j);
          shot.remove(i);
          point++;
          break;
        }
      }
    }
  }

double t = 0;
double d = 0;

void keyReleased() {
  if ((key == 'W' || key == 'w')) {
    t=0;
    bob.setSpeedShip(0, 0);
  }

  if ((key =='S' || key == 's')) {
    t=0;
    bob.setSpeedShip(0, 0);
  }
}
void mouseWheel() {
  shot.add(new Bullet(bob));
}

void keyPressed() {
  
  if ((key == 'W' || key == 'w')) {
    t+=.01;
  }

  if ((key =='S' || key == 's')) {
    t -=.01;
  }

  bob.accelerate(t);

  if ((key =='H' || key == 'h')) {
    bob.hyperspace();
  }

  if ((key =='D' || key == 'd')) {
    bob.turn(25);
  } else if ((key =='A' || key == 'a')) {
    bob.turn(-25);
  }


  if (key =='1') {
    shape = 0;
  } else if (key =='2') {
    shape = 1;
  }

  if (key=='3') {
    shipColor = 0;
  } else if (key =='4') {
    shipColor = 1;
  } else if (key =='5') {
    shipColor = 2;
  } else if (key =='6') {
    shipColor = 3;
  } else if (key =='7') {
    shipColor = 4;
  } else if (key =='8') {
    shipColor = 5;
  } else if (key =='9') {
    shipColor = 6;
  } else if (key =='0') {
    shipColor = 7;
  }
}
int shape = 0;
int shipColor = 0;

void mouseClicked() {
  if (mouseButton == LEFT) { //change color
    shot.add(new Bullet(bob));
  }

  if (mouseButton == RIGHT) { //change shape
    if (shipColor < 3) {
      shipColor++;
    } else {
      shipColor = 0;
    }
    /*
    if (shape < 1) {
      shape++;
    } else {
      shape = 0;
    }
    */
  }
}
