public class Snake {
  public PVector pos;
  public final int SIZE = 20;
  public color c;
  public boolean active = true;
  
  public Snake(int x, int y) {
    pos = new PVector(x,y);
     c = color(100,100,100);
}

public void show() {
   fill(c);
   square(pos.x,pos.y,SIZE);
}
}
