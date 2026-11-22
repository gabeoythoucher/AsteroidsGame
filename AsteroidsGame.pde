//your variable declarations here
Spaceship bob;
decor circ;
asteriod[] greg = new asteriod[4];

Star[] george = new Star[30];
public boolean accelerating,turningLeft,turningRight;
public void keyPressed() {
  if (key == 'w' || key == 'W') { accelerating = true; }
  if (key == 'a' || key == 'A') { turningLeft = true; }
  if (key == 'd' || key == 'D') { turningRight = true; }
  if (key == 's'){
    accelerating = false;
    turningLeft = false;
    turningRight = false;
    bob.myCenterX=(float)Math.random()*width;
    bob.myCenterY=(float)Math.random()*height;
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
  bob = new Spaceship(255);
  circ = new decor(bob,20,20,255,0,0);
  for(int i = 0;i<greg.length;i++)
    greg[i] = new asteriod();
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
  circ.move();
  for(int i =0;i< george.length;i++){
    george[i].show();
  }
  bob.show();
  circ.show();
  for(int i = 0;i<greg.length;i++){
    greg[i].move();
    greg[i].show();
  }
  for(int i = 0; i < greg.length;i++){
    if(dist((float)greg[i].myCenterX, (float)greg[i].myCenterY, (float)bob.myCenterX, (float)bob.myCenterY)<=28){
      noLoop();
    }
  }
  //your code here
}
