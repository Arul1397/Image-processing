
void direc(float s,float ec)
{
 // println(s,ec);
float  a=dist(ox,oy,s,ec);
  float b=dist(nx[0],ny[0],ox,oy);
   float c=dist(s,ec,nx[0],ny[0]);
     
    /////////      
    float ay=(b*b + c*c - a*a);
    float au=2*b*c;
    float arad=acos(ay/au); 
    int adeg=round(degrees(arad));   
    //println();
    ////////
    
int  X1 = round(s-ox);
int  Y1 = round(ec-oy);
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
 int theta=round(d1-d2);
 if(theta<-180)
 {
   theta=theta+360;
 }
 if(theta>180)
 {
   theta=theta-360;
 }
  mx4=(ox+nx[0])/2;
  my4=(oy+ny[0])/2;
  stroke(0,0,0);
  strokeWeight(15);
  point(mx4,my4);
  h=round(dist(mx4,my4,s,ec));
   
if(theta<0)
{
    if(adeg<=abs(theta) && abs(adeg)>ba)
    {
      g=abs(adeg);
      s1="FRONT right!="+g; 
      v='r';
           if(h<bd )
    {
      s1="STOP"+g;
      v='s';
    }
     }
    else if(abs(adeg)<=ba)
    {
      g=abs(adeg);
       s1="Front!"+g;
       v='f';
        if(h<bd)
    {
      s1="STOP"+g;
      v='s';
    }
     }
    if( adeg>=abs(theta) && abs(theta)>ba)
    {
      g=abs(theta);
     s1="BACK right!="+g;
     v='w';
          if(h<bd)
    {
      s1="STOP"+g;
      v='s';
    }
     }
    else if(abs(theta)<=ba)
    {
      g=abs(theta);
       s1="Back!"+g;
       v='b';
        if(h<bd)
    {
      s1="STOP"+g;
      v='s';

    }
     }
}
 
    else if(theta>0)
    {
      
      if(adeg<=abs(theta) && abs(adeg)>ba)
    {
      g=abs(adeg);
      s1="FRONT LEFT!="+g; 
      v='l';
           if(h<bd)
    {
      s1="STOP"+g;
      v='s';
   }
    }
    else if(abs(adeg)<=ba)
    {
      
      g=abs(adeg);
       s1="Front!"+g;
       v='f';
        if(h<bd)
    {
      s1="STOP"+g;
      v='s';
  }
    }
    if( adeg>=abs(theta) && abs(theta)>ba)
    {
      g=abs(theta);
     s1="BACK left="+g;
     v='q';
          if(h<bd)
    {
      s1="STOP"+g;
      v='s';
   }
    }
    else if(abs(theta)<=ba)
    {
      g=abs(theta);
       s1="Back!"+g; 
       v='b';
        if(h<bd)
    {
      s1="STOP"+g;
      v='s';

   }
    }
}
  s2="Distance="+h;
  textSize(30);
  fill(100,0,255);
  textAlign(CORNER);
  text(s1,60,400);
  text(s2,60,450);
       
}