public class Snake {
  public PVector pos, vel;
  public int speed = 5;
  public int length = 100;
  public int width = 25;
  public final color COLOR = color(200, 30, 200);
  public boolean active = true;

  public Snake(int x, int y) {
   pos = new PVector(x,y);
   
  }

  public void show() {
    fill(COLOR);
    rect(pos.x, pos.y, length, width);
  }
  
  public void move() {
    vel = PVector.random2D().mult(speed);
  }
}

public void moveUp() {
    y -= speed;
  }
  
  public void moveDown() {
    y += speed;
  }
  
  public void moveLeft() {
    x -= speed;
  }
  
  public void moveRight() {
    x += speed;
  }
  

  
 
