int myColor;

public void setup()
{
size (500,500);

}
public void mousePressed () {
 
myColor = (int)(Math.random()*36);
}

public void draw() 

{
 /* for (int i =0; i<height; i++) {
    stroke (0,i,i);
    line(0,i,width,i);
  }
*/
background(0);
 
sierpinski(0,500,500);
fill(60-myColor,120-myColor,myColor);

}


public void sierpinski(int x, int y, int side) 
{

if (side<20) {
  triangle (x,y,x+side/2,y-side,x+side,y);

}

else {
  sierpinski(x,y,side/2);
  sierpinski(x+side/2,y,side/2);
  sierpinski(x+side/4,y-side/2,side/2);
  
  
}



}

