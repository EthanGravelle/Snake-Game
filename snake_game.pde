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
  if (food.active == true) { //executes snake.collides method in the Snake class
    food.show();
    snake.collides(food);
  }
}

public void spawnFood() { //this method spawns food, executed on line 5
  for (int i = 0; i < food.SIZE; i++) {
    food = new Food((int)(Math.random()*400 + 100), (int)(Math.random()*350 + 100));

  }
}


  public void keyPressed() { //methods for lines 29, 32, 35, and 38, are on lines 20, 24, 28, 32 respectively in the Snake class
    if (key == 'd') {
      snake.moveRight(); //d moves snake right
    }
    if (key == 'a') {
      snake.moveLeft(); //a moves snake left
    }
    if (key == 'w') {
      snake.moveUp(); //w moves snake forward
    }
    if (key == 's') {
      snake.moveDown(); //s moves snake down
    }
  }
