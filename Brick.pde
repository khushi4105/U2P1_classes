class Brick
{
  //Member.Data
  int _x;
  int _y;
  int _width;
  int _height;
  boolean _alive;


  //Overloaded.Constructor
  Brick(int x, int y, int Width, int Height)
  {
    _x = x;
    _y = y;
    _width = Width;
    _height = Height;
    _alive = true;
  }


  void Draw()
  {
    stroke(3);
    fill(32, 157, 150);
    rect(_x, _y, _width, _height);
  }

  boolean Collision(float bx, float by)
  {
    if (bx>_x)
    {
      if (bx<_x+30)
      {
        if (by > _y)
        {
          if (by < _y+20)
          {
            return true;
          }
        }
      }
    }

    return false;
  }
}
