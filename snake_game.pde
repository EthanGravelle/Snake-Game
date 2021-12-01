Snake snake = new Snake(10,10);
public void setup() {
    size(1000,1000);
   }
   
public void draw() {
    background(220);

    snake.active = true;
    snake.show();
    snake.move();
}
