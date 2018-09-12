int x = 0;
int x2 = 0;
int x3 = 0;
int FR = 60;


//Green light, red light, yellow light, click on screen
void setup()
{
  size(1500, 300);
  frameRate(FR);
}
void draw()
{
  background(100, 100, 100);
  firstCar();
  //ellipse(x, 50, 100, 100); 
  secondCar();
  thirdCar();
  //ellipse(x2, 250, 100, 100); 
  x = x + 4;
  x2 = x2 + 5;
  x3 = x3+ 6;
  if (x > 1500-130 || x2 > 1500-90 || x3 > 1500-160)
  {
    x = 1500-x;
    x2  = 1500-x2;
    x3 =  1500 - 160;
  }
}
void firstCar()
{
  fill(255, 0, 0);
  noStroke();
  rect(x+10, 50, 120, 30);
  arc(x+60, 50, 80, 30, PI, 2*PI);
  fill(0, 0, 0);
  ellipse(x+35, 85, 20, 20);
  ellipse(x+95, 85, 20, 20);
  
}

void secondCar()
{
  fill(0, 255, 0);
  noStroke();
  arc(x2 + 40, 150, 60, 20, PI, PI * 2);
  rect(x2 + 10, 150, 60, 20);
  triangle(x2 + 70, 148, x2 + 70, 170, x2 + 90, 170);
  fill(0, 0, 0);
  ellipse(x2+20, 173, 10, 10);
  ellipse(x2+60, 173, 10, 10);
  
}  

void thirdCar()
{
  fill(0, 0, 255);
  rect(x3+10, 250, 160, 20);
  arc(x3+60, 250, 80, 50, PI, 2*PI);
  fill(0, 0, 0);
  ellipse(x3+30, 275, 20, 20);
  ellipse(x3+145, 275, 20, 20);
  
}