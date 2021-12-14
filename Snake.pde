public class Snake { //<>//
  public PVector pos, vel;
  public final int speed = 10; //snake movement speed
  public int length = 100;
  public int width = 25;
  public final color COLOR = color(43,251,14);
  public boolean active = true;


  public Snake(int x, int y) {
    pos = new PVector(x, y);
    this.pos = pos;
  }

  public void show() {
    fill(COLOR);
    rect(pos.x, pos.y, length, width); //the snake block
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


  public void collides(Food f) { //This collision method makes it so when the snake and the food make contact, the food becomes inactive
    double dist = PVector.sub(this.pos, f.pos).mag();
    if (dist <= this.length+this.width / 2 + f.SIZE / 2) {
      f.active = false;
      this.length += 10; //length will increase by 10 every time the collision happens
      if (this.active == true) { //* This if statement makes sure that new food is active
        spawnFood();             //* as long as the collision method is active
      }
    }
  }
}
