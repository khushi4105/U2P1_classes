class Ball
{

  //Member data
  float _x;
  float _y;
  float _velocityX;
  float _velocityY;

  //Constructors
  Ball()
  {
    _x = random(0, 600);
    _y = random(200,600);
    _velocityX = random(-4, 4);
    _velocityY = random(-4, 4);
  }

  //Overloaded Constructor
  Ball(float x, float y, float xvel, float yvel)
  {
    _x = _x;
    _y = _y;
    _velocityX = xvel;
    _velocityY = yvel;
  }

  //Member Functions
  void Move()
  {
    _x = _x + _velocityX;
    _y = _y + _velocityY;
  }

  //bounces
  void Bounce()
  {
    if (_x > 600)
    {
      _velocityX = _velocityX * -1;
    }

    if (_x < 0)
    {
      _velocityX = _velocityX* -1;
    }

    if (_y > 600)
    {
      _velocityY = _velocityY* -1;
    }

    if (_y < 0)
    {
      _velocityY = _velocityY*-1 ;
    }
  }

  //draw
  void Draw()
  {
    fill(255, 255, 255);
    ellipse( _x, _y, 15, 15);
  }

  void Update()
  {
    Move();
    Bounce();
    Draw();
  }
}
