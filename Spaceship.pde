class Spaceship extends Floater  
{   
    public Spaceship(int clr){
      corners = 26;
      yCorners = new float[]{-17,-14,-13,-10,-5,-2,2,5,10,13,14,17,20,17,14,13,10,5,2,-2,-5,-10,-13,-14,-17,-20,-17};
      xCorners = new float[]{23,19,2,2,4,6,6,4,2,2,19,23,0,-23,-19,-2,-2,-4,-6,-6,-4,-2,-2,-19,-23,0,-23};
      for(int i = 0; i<xCorners.length;i++){
        xCorners[i]/=1.5;
        yCorners[i]/=1.5;
      }
      myColor = clr;
      myCenterX = (float)width/2;
      myCenterY = (float)height/2;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
}
