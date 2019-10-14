Brick[] bricks = new Brick[300];
Ball b1 = new Ball();

void setup()
{
  size(600, 600); 

  //performs the function for gettin rows + columns  
  //Everytime the column for loop runs, it tells the programm to add a row. 
  //It tells them to add a column by adding column no. to 0 and mutiplying by 30 as the size of our x value is 30 too 

  for (int row = 0; row<10; row++)
  {
    for (int column = 0; column<30; column++)
    {
      bricks[30*row+column] = new Brick(0+column*30, 0+row*20, 30, 20);
    }
  }
}


void draw()
{

  background (0, 0, 0);

  for (int row = 0; row<10; row++)
  {
    for (int column = 0; column<30; column++)
    {

      if (bricks[30*row + column]._alive == true)
      {
        bricks[30*row + column].Draw();
        if (bricks[30*row + column].Collision(b1._x, b1._y))
        {
          bricks[30*row + column]._alive = false;
          b1._velocityX = b1._velocityX * -1;
        }
      }
    }
  }

  b1.Update();
}
