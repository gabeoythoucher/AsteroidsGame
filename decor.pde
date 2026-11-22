class decor extends Floater {
  int r,g,b;
  int offsetx,offsety;
  Floater following;
  public decor(Floater bill,int diffx,int diffy,int clr1,int clr2,int clr3){
    offsetx = diffx;
    offsety = diffy;
    following = bill;
    myCenterX = following.myCenterX;
    myCenterY = following.myCenterY;
    myPointDirection = following.myPointDirection;
    r = clr1;
    g = clr2;
    b = clr3;
  }
  public void move(){
    myCenterX = following.myCenterX + offsetx;
    myCenterY = following.myCenterY + offsety;
    myPointDirection = following.myPointDirection;
  }
  public void show(){
    fill(r,g,b);
    ellipse((float)myCenterX + offsetx,(float)myCenterY + offsety,9,9);
  }
}
