class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 26;
      yCorners = new int[]{-17,-14,-13,-10,-5,-2,2,5,10,13,14,17,18,17,14,13,10,5,2,-2,-5,-10,-13,-14,-17,-18};
      xCorners = new int[]{23,19,2,2,4,6,6,4,2,2,19,23,0,-23,19,-2,-2,-4,-6,-6,-4,-2,-2,-19,-23,0};
      myColor = 255;
      myCenterX = width/2;
      myCenterY = height/2;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
}
