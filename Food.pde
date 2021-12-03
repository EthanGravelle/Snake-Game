public class Food {
  public PVector pos;
  public final int SIZE = 25;
  public final color COLOR = color(0,200,30);
  public boolean active = true;
  
  public Food(int x, int y) {
    pos = new PVector(x,y);
  
  }
  
  public void show() {
    fill(COLOR);
    square(pos.x,pos.y,SIZE);
  }
}
