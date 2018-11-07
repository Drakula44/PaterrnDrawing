FloatList x = new FloatList();
FloatList y = new FloatList();


void setup()
{
  size(700,600);
  for (float i = 0;i <PI*2;i+=(PI*2)/200)
  {
    x.append(cos(i)*200);
    y.append(sin(i)*200);
    
  }
}
int m = 2;
void draw()
{
  translate(width/2,height/2);
  ellipse(0,0,400,400);  
  for (int i = 0;i <200;i++)
  {
    line(x.get((i)%200),y.get((i)%200),x.get((i*m)%200),y.get((i*m)%200));
    
  }
  //m++;
  if(m >= 200){m = 0;}
  delay(90);
}
