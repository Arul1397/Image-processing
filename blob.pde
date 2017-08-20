   int[] wrx=new int[1000],wry=new int[10000];
   int[] dt=new int[10000];
   int[] wx=new int[100000];
   int[] wy=new int[100000];
   int wd=0;
   int ed=0;
class Blob {
  float minx;
  float miny;
  float maxx;
  float maxy;

int num=0;
  ArrayList<PVector> points;

  Blob(float x, float y) {
    minx = x;
    miny = y;
    maxx = x;
    maxy = y;
    points = new ArrayList<PVector>();
    points.add(new PVector(x, y));
  }

  PVector show(String a,int t) {
  wx[t]=round(minx)+round((maxx-minx)*0.5);
     wy[t]=round(miny)+round((maxy-miny)*0.5); 
    
    
    //stroke(0);
    //fill(255);
    //strokeWeight(2);
    //rectMode(CORNERS);
    //rect(minx, miny, maxx, maxy);

dt[t]=round(dist(wx[t],wy[t],wrx[t],wry[t]));
if(dt[t]>10)//dist(wx[num],wy[num],minx,miny))
{
  wrx[t]=wx[t];
  wry[t]=wy[t];
}   


strokeWeight(7);
stroke(255,0,0);
 point(wrx[t],wry[t]);
    textAlign(CENTER);
    textSize(24);
    fill(0);    
    
text(a,wrx[t],wry[t]);
text(t,wrx[t],wry[t]+25);

return new PVector(wrx[t],wry[t]);
  }
 


  void add(float x, float y) {
    points.add(new PVector(x, y));
    minx = min(minx, x);
    miny = min(miny, y);
    maxx = max(maxx, x);
    maxy = max(maxy, y);
  }

  float size() {
    return (maxx-minx)*(maxy-miny);
  }

  boolean isNear(float x, float y) {

    float d = 10000000;
    for (PVector v : points) {
      float tempD = distSq(x, y, v.x, v.y);
      if (tempD < d) {
        d = tempD;
      }
    }

    if (d < distThreshold*distThreshold) {
      return true;
    } else {
      return false;
    }
  }
  
}