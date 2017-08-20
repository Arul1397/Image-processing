void direc2()
 // println(s,ec);
{
float  a=dist(ox,oy,kx[i],ky[i]);
  float b=dist(nx[0],ny[0],ox,oy);
   float c=dist(kx[i],ky[i],nx[0],ny[0]);
     
    /////////      
    float ay=(b*b + c*c - a*a);
    float au=2*b*c;
    float arad=acos(ay/au); 
    int adeg=round(degrees(arad));   
    //println();
    ////////
    
int  X1 = round(kx[i]-ox);
int  Y1 = round(ky[i]-oy);
int  X2 =round(nx[0]-ox);
int  Y2 = round(ny[0]-oy);

float r2=atan2(Y2,X2);//bot
float r1= atan2(Y1,X1); //point
float d1 = degrees(r1);
float d2 = degrees(r2);

if(d1<0)
{
d1=d1+360;
}
else
{
 
}
 if(d2<0)
{
 d2=d2+360;
}
else
{
  
}
  mx4=(ox+nx[0])/2;
  my4=(oy+ny[0])/2;
  stroke(0,0,0);
  strokeWeight(15);
  point(mx4,my4);
  h=round(dist(mx4,my4,kx[i],ky[i]));
  //////
 int theta=round(d1-d2);
 if(abs(theta)<180)
 {
if(theta<0 && theta!=-180)
{
  
      s1="FRONT right!="+(adeg);    
      v='r';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }
}
 
    else if(theta>0 && theta!=180)
    {
 
      s1="FRONT left!="+adeg;      
         v='l';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }

    }
     else if(abs(theta)==0 || abs(theta)==180)
  {
    if(adeg==0)
    {
   s1="Front!";
      v='f';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }
    }
    else if(adeg==180)
    {
      s1="back!";
         v='r';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }
    }
  }
 }
  else if(abs(theta)>=180)
 {
if(theta<0 && theta!=-180)
{
  
      s1="FRONT Left!="+(adeg);  
         v='l';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }

}
 
    else if(theta>0 && theta!=180)
    {
 
      s1="FRONT Right!="+adeg;      
         v='r';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }

    }
     else if(abs(theta)==0 || abs(theta)==180)
  {
    if(adeg==0)
    {
   s1="Front!";
      v='f';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }
    }
    else if(adeg==180)
    {
      s1="Back!";
         v='r';
      if(h<bd )
    {
      s1="STOP";
      v='s';
    }
    }
  }
 }   
//////
  s2="Distance="+h;
  textSize(30);
  fill(100,0,255);
  textAlign(CORNER);
  text(s1,60,400);
  text(s2,60,450);
       
}