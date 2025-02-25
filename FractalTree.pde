private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
double ter = 0 ; 
public void setup() 
{   
  size(800,800);    
} 
public void draw() 
{   
  ter += .005;
  background(0);   
  stroke(0,255,0);   
  //line(320,480,320,380);   
  drawBranches(400,600,100,3*Math.PI/2);
 // if (ter>=//will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle+ branchAngle; 
  double angle2 = angle- branchAngle; 
  int endX1 = (int)(branchLength*Math.cos(angle1*ter) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2*ter) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);   
  line(x,y,endX2,endY2);   
  if (branchLength>smallestBranch) {
    drawBranches(endX1,endY1,branchLength*fractionLength,angle1);
    drawBranches(endX2,endY2,branchLength*fractionLength,angle2);
  } 
  
  
} 
