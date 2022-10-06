void setup()
{
  noLoop();
  size (400, 400);
}

Die yep;
void draw()
{
  background(255, 255, 255);
  int counter = 0;
  for (int i = 5; i < 400; i+=145){
    for (int j = 5; j < 400; j += 145){
      Die yep = new Die (i, j); 
      yep.roll();
      yep.show();
      counter = counter + yep.dieNum;
    }
  }
  System.out.println(counter);
  textSize(20);
  text("Your total score is " + counter, 100, 132);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dieNum;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    dieNum = (int)(Math.random()*6)+1;
  }
  void show()
  {
   fill((float)(Math.random()*255) + 100, (float)(Math.random()*255)+ 100, (float)(Math.random()*255)+100);
   
    strokeWeight(3);
    rect(myX, myY, 100, 100);
    

    fill(0);
    if (dieNum == 1) {
      ellipse(myX + 50, myY + 50, 25, 25);
    }
    if (dieNum == 2) {
      ellipse(myX + 80, myY + 19, 25, 25);
      ellipse(myX + 20, myY + 82, 25, 25);
    }
    if (dieNum == 3) {
      ellipse(myX + 80, myY + 19, 25, 25);
      ellipse(myX + 20, myY + 82, 25, 25);
      ellipse(myX + 50, myY + 50, 25, 25);
    }
    if (dieNum == 4) {
      ellipse(myX + 80, myY + 19, 25, 25);
      ellipse(myX + 80, myY + 82, 25, 25);
      ellipse(myX + 20, myY + 19, 25, 25);
      ellipse(myX + 20, myY + 82, 25, 25);
    }
    if (dieNum == 5) {
      ellipse(myX + 80, myY + 19, 25, 25);
      ellipse(myX + 80, myY + 82, 25, 25);
      ellipse(myX + 20, myY + 19, 25, 25);
      ellipse(myX + 20, myY + 82, 25, 25);
      ellipse(myX + 50, myY + 50, 25, 25);
    }
    if (dieNum == 6) {
      ellipse(myX + 80, myY + 19, 25, 25);
      ellipse(myX + 80, myY + 50, 25, 25);
      ellipse(myX + 80, myY + 82, 25, 25);
      ellipse(myX + 20, myY + 19, 25, 25);
      ellipse(myX + 20, myY + 50, 25, 25);
      ellipse(myX + 20, myY + 82, 25, 25);
    }
  }
}
