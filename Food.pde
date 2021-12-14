public class Food {
  public PVector pos;
  public final int SIZE = 25; //size of the food (never changes)
  public final color COLOR = color(255,255,1); //this is the color I set. It is final because it doesn't change
  public boolean active = true;

  public Food(int x, int y) {
    pos = new PVector(x, y);
  }

  public void show() {
    fill(COLOR);
    square(pos.x, pos.y, SIZE);
  }
}
