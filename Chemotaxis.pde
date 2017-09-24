Bacteria [] colony;
void setup()
{
  size(400, 400);
  background(255);
  noCursor();
  //initializing array
  colony = new Bacteria[50];
  for (int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}

void draw()
{
  background(255);
  pizzaCursor();
  for (int i = 0; i < colony.length; i++)
  {
    colony[i].show();
    colony[i].move();
  }
}

void pizzaCursor()
{
  //pizza
  stroke(225, 225, 160);
  strokeWeight(2);
  fill(255, 255, 190);
  triangle(mouseX - 25, mouseY - 5, mouseX + 25, mouseY - 5, mouseX, mouseY + 60);
  //crust
  stroke(160, 100, 40);
  fill(180, 120, 60);
  rect(mouseX - 25, mouseY - 10, 50, 8, 3);
  //pepperoni
  noStroke();
  fill(255, 0, 0);
  ellipse(mouseX - 10, mouseY + 7, 15, 15);
  ellipse(mouseX + 8, mouseY + 15, 15, 15);
  ellipse(mouseX - 1, mouseY + 35, 15, 15);
}

class Bacteria
{
  int myX, myY, rojo, verde, azul; //variables

  Bacteria() //contructor, initializing things
  {
    //positions
    myX = 200 + (int)(Math.random()*21)-10;
    myY = 200 + (int)(Math.random()*21)-10;
    //colors
    rojo = (int)(Math.random()*255);
    verde = (int)(Math.random()*255);
    azul = (int)(Math.random()*255);
  }
  void move()
  {
    if (mouseX > myX)
    {
      myX = myX + (int)((Math.random()*6)-2);
    } else if (mouseX < myX)
    {
      myX = myX + (int)((Math.random()*6)-4);
    } else
    {
      myX = myX + (int)((Math.random()*3)-2);
    }

    if (mouseY > myY)
    {
      myY = myY + (int)((Math.random()*6)-2);
    } else if (mouseY < myY)
    {
      myY = myY + (int)((Math.random()*6)-4);
    } else
    {
      myY = myY + (int)((Math.random()*3)-2);
    }
  }
  void show()
  {
    noStroke();
    fill(rojo, verde, azul);
    ellipse(myX, myY, 15, 15);
  }
}
