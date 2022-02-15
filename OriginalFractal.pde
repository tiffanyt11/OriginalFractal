public void setup()
{
  size(500,300);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250, 170, 480);
  
}
public void myFractal(int x, int y, int siz)
{
  int myColor;
  myColor = color((int)(Math.random()*10)+130, (int)(Math.random()*50)+100, (int)(Math.random()*200)+160, (int)(Math.random()*40)+80);
  fill(myColor);
  noStroke();
beginShape();
curveVertex(-30 + x, 0 + y);
curveVertex(-20 + x, -40 + y);
curveVertex(20 + x, -60 + y);
curveVertex(40 + x, -40 + y);
curveVertex(50 + x, -30 + y);
curveVertex(55 + x, -20 + y);
curveVertex(50 + x, -10 + y);
curveVertex(40 + x, 0 + y);
curveVertex(33 + x, 10 + y);
curveVertex(25 + x, 20 + y);
curveVertex(10 + x, 19 + y);
curveVertex(0 + x, 15 + y);
curveVertex(-10 + x, 9 + y);
curveVertex(-20 + x, 0 + y);
curveVertex(-30 + x, -20 + y);
curveVertex(-21 + x, -39 + y);
curveVertex(-10 + x, 0 + y);
endShape(); 
  
  if(siz>30)
  {
    myFractal(x-siz/5, y, siz/2);
    myFractal(x+siz/5, y, siz/2);
  }
}
