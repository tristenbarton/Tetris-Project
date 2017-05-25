boolean m;
int[][] grid ;
int[][] grid1;
int[] queuearray;
int cellSize = 40;
int gridWidth;
int gridHeight;
int y;
int x;
int speed;
int state;
int pos = 0;
int sides = 1;
String s = "Score";
int score = 0;
int tet;
int queue = 99;
int q = 0;
tetr Cb = new tetr();
void setup()
{
  background(0);
  frameRate(7);
  state = 4;
  speed = 0;
  size(800, 900);
  // set grid size
  gridWidth = 10;
  gridHeight = 21;
  // instigate the array
  grid = new int[gridWidth][gridHeight];
  grid1 = new int[gridWidth][gridHeight];
  queuearray = new int[queue];
  // populates grid
  fillGrid();
  displayGrid();
  fillqueue();
}



void draw()
{
  fillGrid();
  setpiece(tet);
  displayGrid();
  move();
}




//goes though the queue and sets the next piece
void nextpiece()
{
 
 if(q >= 99)
 {  
   q = 0;
 }
 tet = queuearray[q];
 q++;
 print(q);
}




//fills the queue up with random numbers between 0 and 6
void fillqueue()
{
  for(int q = 0;q < queue;q++)
  {
    setran();
    queuearray[q] = tet;
    
  }
}




void displayGrid()
{
  for (int x = 0; x < gridWidth*40; x= x+ 40 ) {
    for (int y = 0; y < gridHeight*40; y = y+40) {
      if (grid[x/40][y/40] == 1 || grid1[x/40][y/40] == 1) 
      {
        setpiececolor(tet);
      } 
      if (grid[x/40][y/40] == 2 ) 
      {
        noStroke();
        fill(0);
      } 
      rect(x+200, y+40, cellSize, cellSize); 
      stroke(0);
      fill(255);
    }
  }
}
//checkls to see if the value of the spot of the array is set to 1
//if it is then put fill to 128
/*void upadteDisplay()
 {
 for (int x = 0; x < gridWidth; x = x + 40) {
 for (int c = 0; c < gridHeight - 1; c++) {
 if (grid[x][y] == 1 || grid1[x][y] == 1)
 {
 setpiececolor(tet);
 }
 
 rect(x+40, 0, cellSize, cellSize);
 }
 }
 }
 */
//sets all placews in the array to 0
void fillGrid()
{
  for (int x = 0; x < gridWidth; x++) {
    for (int y = 0; y < gridHeight; y++) {
      grid[x][y] = 0;
      grid1[x][y] = 0;
      if (grid[x][y]== 0)
      {
        grid[x][20]= 2;
      }
    }
  }
}
//checks for keyboard input
void keyPressed()
{
  if (canmove()==true)
  {
    if (keyCode == UP)
    {
      rotatepiece();
    }
    if (x > 0) {
      if (keyCode ==LEFT)
      {
        if (x < 0)
        {
          x = 0;
        }
        x = x-sides;
      }
    }
    if (keyCode ==RIGHT)
    {
      if (x <= 0)
      {
        x = 0;
      }
      x = x+sides;
    }
  }
}
//checks to see if the peice can move
//then if it cant it will stop the piece and spawn a new piece
void move()
{
  if (canmove()==false)
  {
    speed = 0;
    sides = 0;
    nextpiece();
    copyarray();
    
    score = score + 10;
  } else {
    speed = 1;
    sides = 1;
  }
  y = y + speed;
}

void rotatepiece()
{
  if (state == 4)
  {
    state = 0;
  }
  state = state + sides;
}

void ycheck()
{
  if (x <= -1)
  {
    x = 0;
  }

  if (y+pos>= 21)
  {
    y = y-pos;
  }
  if (x>=10)
  {
    x = 9;
  }
  if (grid[x][y+pos] == 2)
  {
    y = y-1;
  }
}

boolean canmove()
{
  m = true;
  if (y == 19-pos)
  {
    m = false;
  }
  return m;
}

void score()
{
  rect(0, 0, 180, 80);
  fill(0);
  stroke(128);
  textSize(32);
  text(s, 50, 50);
  text(score, 75, 75);
  fill(255);
  stroke(0);
}
void spawn()
{
  if (canmove() == false)
  {
    setran();
    m = true;
    x=0;
    y=0;
  }
}
void setran()
{ 
  tet = int(random(0,35)/6);
}
void setpiece(int tet1)
{
  if (tet1 == 0)
  {

    Cb.shapei();
  }
  if (tet1 == 1)
  {

    Cb.shapeo();
  }
  if (tet1 == 2)
  { 

    Cb.shapet();
  }
  if (tet1 == 3)
  {

    Cb.shapes();
  }
  if (tet1 == 4)
  {

    Cb.shapez();
  }
  if (tet1 == 5)
  {

    Cb.shapeJ();
  }
  if (tet1 ==6)
  {

    Cb.shapeL();
  }
}

void setpiececolor(int tet1)
{
  //i
  if (tet1 == 0)
  {
    //blue
    fill(2,176,242);
  }
  //o
  if (tet1 == 1)
  {
    //yellow
    fill(249, 201, 4);
  }
  //t
  if (tet1 == 2)
  { 
    //purple
    fill(255, 0, 255);
  }
  //s
  if (tet1 == 3)
  {
    //green
    fill(0, 255, 0);
  }
  //z
  if (tet1 == 4)
  {
    //red
    fill(255, 0, 0);
  }
  //J
  if (tet1 == 5)
  {
    
    //dark blue
    fill(0,0,255);
  }
  //L
  if (tet1 ==6)
  {
    //orange
    fill(250, 69, 10);
  }
}
void copyarray()
{
  arrayCopy(grid, grid1);
}