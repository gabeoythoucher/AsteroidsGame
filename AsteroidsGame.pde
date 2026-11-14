//your variable declarations here
Spaceship bob;
Star[] george = new Star[25];
public boolean accelerating,turningLeft,turningRight;
public void keyPressed() {
  if (key == 'w' || key == 'W') { accelerating = true; }
  if (key == 'a' || key == 'A') { turningLeft = true; }
  if (key == 'd' || key == 'D') { turningRight = true; }
  if (key == 's'){
    accelerating = false;
    turningLeft = false;
    turningRight = false;
    bob.myCenterX=Math.random()*width;
    bob.myCenterY=Math.random()*height;
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myPointDirection = Math.random()*360;
  }
}

public void keyReleased() {
  if (key == 'w' || key == 'W') { accelerating = false; }
  if (key == 'a' || key == 'A') { turningLeft = false; }
  if (key == 'd' || key == 'D') { turningRight = false; }
}

public void setup() 
{
  size(500,500);
  bob = new Spaceship();
  //your code here
  for(int i =0;i< george.length;i++){
    george[i]= new Star();
  }
}
public void draw() 
{
  if(accelerating){bob.accelerate(.125);}
  if(turningLeft){bob.turn(-5);}
  if(turningRight){bob.turn(5);}
  background(0);
  bob.move();
  bob.show();
  for(int i =0;i< george.length;i++){
    george[i].show();
  }
  //your code here
}
