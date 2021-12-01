public class Snake {
  public PVector pos, vel;
  public int speed = 5;
  public final int SIZE = 50;
  public final color COLOR = color(200, 30, 200);
  public boolean active = true;

  public Snake(int x, int y) {
   pos = new PVector(x,y);
   
  }

  public void show() {
    fill(COLOR);
    square(pos.x, pos.y, SIZE);
  }
  
  public void move() {
    vel = PVector.random2D().mult(speed);
  }
}
  

  
 
