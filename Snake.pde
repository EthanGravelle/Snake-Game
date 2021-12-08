public class Snake {
  public PVector pos, vel;
  public int speed = 5;
  public int length = 100;
  public int width = 25;
  public final color COLOR = color(200, 30, 200);
  public boolean active = true;


  public Snake(int x, int y) {
    pos = new PVector(x, y);
    this.pos = pos;
  }

  public void show() {
    fill(COLOR);
    rect(pos.x, pos.y, length, width);
  }

  public void moveUp() {
    pos.y -= speed;
  }

  public void moveDown() {
    pos.y += speed;
  }

  public void moveLeft() {
    pos.x -= speed;
  }

  public void moveRight() {
    pos.x += speed;
  }


  public void collides(Food f) {
    if (this.pos.x >= f.pos.x
      && this.pos.x <= f.pos.x + f.SIZE
      && this.pos.y >= f.pos.y
      && this.pos.y <= f.pos.y + f.SIZE)
      f.active = false;
    }
}
