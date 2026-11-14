class Star{
  private float x,y,r,g,b;
  public Star(){
    r = (float)Math.random()*255;
    g = (float)Math.random()*255;
    b = (float)Math.random()*255;
    x = (float)Math.random()*width;
    y =(float) Math.random()*height;
  }
  public void show(){
    fill(r,g,b);
    ellipse(x,y,2,2);
  }
}
