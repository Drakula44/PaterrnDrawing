void setup()
{
  size(700,700);
}
void tr(float x1,float y1,float x2,float y2,float x3,float y3,int iteration)
{
  if(iteration == 0)
  return;
  triangle(x1,y1,x2,y2,x3,y3);
  float x1m,x2m,x3m,y1m,y2m,y3m;
  x1m = (x1+x2)/2;
  x2m = (x1+x3)/2;
  x3m = (x2+x3)/2;
  y1m = (y1+y2)/2;
  y2m = (y1+y3)/2;
  y3m = (y2+y3)/2;
  triangle(x1m,y1m,x2m,y2m,x3m,y3m);
  tr(x1,y1,x1m,y1m,x2m,y2m,iteration-1);
  tr(x2,y2,x1m,y1m,x3m,y3m,iteration-1);
  tr(x3,y3,x2m,y2m,x3m,y3m,iteration-1);
  iteration--;
}
int m = 2;
int k = 1;
void draw()
{
  background(100);
  translate(width/2,height/2);
  //triangle(-200,0,200,0,0,-200*sqrt(3));
  //tr(-200*m,0*m,200*m,0,0*m,-200*sqrt(3)*m,5+m/5);
  tr(-200,0,200,0,0,-200*sqrt(3),m);
  m+=k;
  if(m == 15 || m == 2)
  k*=-1;
  delay(400);
}
