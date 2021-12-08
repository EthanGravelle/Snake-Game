Snake snake = new Snake(10, 10);
Food food = new Food(1, 10);
public void setup() {
  size(1000, 1000);
  spawnFood();
}

public void draw() {
  background(220);
  snake.active = true;
  snake.show();
  if (snake.active)
  food.active = true;
  food.show();
  if (f.active)
    snake.collides(f);
}

public void spawnFood() {
  for (int i = 0; i < food.SIZE; i++) {
    food = new Food((int)(Math.random()*400 + 100), (int)(Math.random()*350 + 100));
  }
}

public void keyPressed() {
  if (key == 'd') {
    snake.moveRight();
  }
  if (key == 'a') {
    snake.moveLeft();
  }
  if (key == 'w') {
    snake.moveUp();
  }
  if (key == 's') {
    snake.moveDown();
  }
}
