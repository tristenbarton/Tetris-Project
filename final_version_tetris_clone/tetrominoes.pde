class tetr
{

  void shapei() 
  {
    if (state == 1 || state == 3)//vertical
    {
      ycheck();
      // @
      // @
      // @
      // @
      pos = 3;
      if (x > 9)
      {
        x = 9;
      }
      grid[x][y] = 1;
      grid[x][y+1] = 1;
      grid[x][y+2] = 1;
      grid[x][y+3] = 1;
    }

    if (state == 2 || state == 4)//horizontal
    {
      ycheck();
      // @ @ @ @
      pos = 0;
      if (x < 0)
      {
        x = 0;
      }
      if (x > 6)
      {
        x = 6;
      }
      grid[x][y] = 1;
      grid[x+1][y] = 1;
      grid[x+2][y] = 1;
      grid[x+3][y] = 1;
    }
  }

  void shapeo()//only has one state
  {
    pos = 1;
    ycheck();
    // @ @
    // @ @
    if (x+1 >= 10)
    {
      x = 8;
    }

    grid[x][y] = 1;
    grid[x+1][y] = 1;
    grid[x][y+1] = 1;
    grid[x+1][y+1] = 1;
  }
  void shapet()
  {
    ycheck();
    //   @
    // @ @ @
    if (state == 1)//up
    {
      pos = 1;

      if (x >= 9)
      {
        x = 7;
      }

      grid[x+1][y] = 1;
      grid[x][y+1] = 1;
      grid[x+1][y+1] = 1;
      if (x+2 == 10)
      {
        x = 7;
      }
      grid[x+2][y+1] = 1;
    }
    // @
    // @ @
    // @
    if (state == 2)//right
    {
      pos = 2;
      if (x+1 >= 10)
      {
        x = 8;
      }
      grid[x][y] = 1;
      grid[x+1][y+1] = 1;
      grid[x][y+1] = 1;
      if (y+2 >= 20)
      {
        y = 16;
      }
      grid[x][y+2] = 1;
    }
    // @ @ @
    //   @ 
    if (state == 3)//down
    {
      pos = 1;
      if (x+2 == 10)
      {
        x = 7;
      } 
      grid[x][y] = 1;
      grid[x+1][y] = 1;
      grid[x+2][y] = 1;
      if (y+1 >= 20)
      {
        y = 18;
      }
      grid[x+1][y+1] = 1;
    }
    //   @
    // @ @
    //   @
    if (state == 4)//left
    {
      pos = 2;
      if (x+1 == 10)
      {
        x = 8;
      }
      if (y+2 >= 20)
      {
        y = 17;
      }
      grid[x+0][y+1] = 1;
      grid[x+1][y+1] = 1;
      grid[x+1][y] = 1;
      grid[x+1][y+2] = 1;
    }
  }

  void shapes()
  {

    if (state == 1 || state == 3)//left
    {
      if(x+2 >=10)
      {
        x = 7;
      }
      pos = 1;
      ycheck();
      grid[x][y] = 1;
      grid[x+1][y] = 1;
      grid[x+1][y+1] = 1;
      grid[x+2][y+1] = 1;
    }

    if (state == 2 || state == 4)//up
    {
      if(x + 1 >= 10)
      {
        x = 8;
      }
      pos = 2;
      ycheck();
      grid[x+1][y] = 1;
      grid[x+1][y+1] = 1;
      grid[x][y+1] = 1;
      grid[x][y+2] = 1;
    }
  }

  void shapez()
  {


    if (state == 1 || state == 3)//left
    {
      // @ @
      //   @ @
      if (x+2 >= 10)
      {
        x =  7;
      }
      pos = 1;
      ycheck();
      grid[x+1][y] = 1;
      grid[x+2][y] = 1;
      grid[x][y+1] = 1;
      grid[x+1][y+1] = 1;
    }
    // @
    // @ @
    //   @
    if (state == 2 || state == 4)//up
    {
      if (x+1 >= 10)
      {
        x =  8;
      }
      pos = 2;
      ycheck();
      grid[x][y] = 1;
      grid[x][y+1] = 1;
      grid[x+1][y+1] = 1;
      grid[x+1][y+2] = 1;
    }
  }
  void shapeJ()
  {

    //   @
    //   @
    // @ @
    if (state == 1)//left
    {
      pos = 2;
      if (x < 0)
      {
        x = 0;
      }
      if (x+1 >= 10)
      {
        x = 8;
      }
      ycheck();
      grid[x+1][y] = 1;
      grid[x+1][y+1] = 1;
      grid[x+1][y+2] = 1;    
      grid[x][y+2] = 1;
    }

    // @ @ @
    //     @
    if (state == 2)//down
    {
      pos = 1;
      ycheck();
      if (x+1 >= 10)
      {
        x = 8;
      }
      grid[x][y] = 1;
      grid[x+1][y] = 1;
      if (x+2 >= 9)
      {
        x = 7;
      }
      grid[x+2][y] = 1;
      grid[x+2][y+1] = 1;
    }

    // @ @
    // @
    // @
    if (state == 3)//right
    {
      pos = 2;
      ycheck();
      grid[x][y] = 1;
      if (x + 1 >= 9)
      {
        x = 8;
      }
      grid[x+1][y] = 1;
      grid[x][y+1] = 1;
      if (y+1 >= 20)
      {
        y = 18;
      }
      grid[x][y+2] = 1;
    }

    // @
    // @ @ @ 
    if (state == 4)//up
    {
      pos = 1;
      ycheck();

      if (x+1 == 10)
      {
        x = 8;
      }
      if (x+2 >= 9)
      {
        x = 7;
      }
      grid[x][y] = 1;
      grid[x][y+1] = 1;
      grid[x+1][y+1] = 1;
      grid[x+2][y+1] = 1;
    }
  }
  void shapeL()
  {
    if (state == 1)//right
    {
      // @
      // @
      // @ @
      pos = 2;
      ycheck();
      if (x < 0)
      {
        x = 0;
      }
      if (x + 1 >= 10)
      {
        x = 8;
      }
      grid[x][y] = 1;
      grid[x][y+1] = 1;
      grid[x][y+2] = 1;    
      grid[x+1][y+2] = 1;
    }

    // @ @ @
    // @
    if (state == 2)//down
    {
      if (x+2 >= 10)
      {
        x = 7;
      }
      pos = 1;
      ycheck();
      grid[x][y] = 1;
      grid[x+1][y] = 1;
      grid[x+2][y] = 1;
      grid[x][y+1] = 1;
    }

    // @ @ 
    //   @
    //   @
    if (state == 3)//left
    {
      if (x+ 1 >= 10)
      {
        x = 8;
      }
      pos = 2;
      ycheck();
      grid[x][y] = 1;
      grid[x+1][y] = 1;
      grid[x+1][y+1] = 1;
      grid[x+1][y+2] = 1;
    }

    //     @  
    // @ @ @ 
    if (state == 4)//up
    {
      pos = 1;
      ycheck();
      if (x+2 >= 10)
      {
        x = 7;
      }
      grid[x+2][y] = 1;
      grid[x][y+1] = 1;
      grid[x+1][y+1] = 1;
      grid[x+2][y+1] = 1;
    }
  }
}