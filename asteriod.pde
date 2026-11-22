class asteriod extends Floater  {
  private float sqrt2 = (float)Math.sqrt(2);
  private float sqrt3 = (float)Math.sqrt(3);
  public float[] lengths = {1,1,1,sqrt2,sqrt2,sqrt2,sqrt3,sqrt3,sqrt3,2,2,2};
  float[] angles = new float[12];
  double turn;
  public asteriod(){
    for (int i = lengths.length - 1;i>0;i--){
      int j = int(random(i+1));
      float temp = lengths[i];
      lengths[i] = lengths[j];
      lengths[j]=temp;
    }
    xCorners = new float[12];
    yCorners = new float[12];
    for(int i = 0; i<angles.length ; i++){
      float temps = lengths[i];
      angles[i]=(float)i*30;
      xCorners[i]= (float)(cos(radians(angles[i]))*temps*10);
      yCorners[i]= (float)(sin(radians(angles[i]))*temps*10);
    }
    corners = 12;
    myColor = 125;
    myCenterX = 0;
    myCenterY = 0;
    myXspeed = Math.random()*1.5-0.75;
    myYspeed = Math.random()*1.5-0.75;
    myPointDirection = 0;
    turn = Math.random()*1.5-0.75;
  }//end of initialization
  public void move(){
    myPointDirection += turn;
 

    //wrap around screen   and movement 
    super.move();
  }
    
}
