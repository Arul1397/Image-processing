
//import processing.video.*;
//import processing.serial.*;
//import gab.opencv.*;
//import org.opencv.imgproc.Imgproc;
//import org.opencv.core.MatOfPoint2f;
//import org.opencv.core.Point;
//import org.opencv.core.Size;

//import org.opencv.core.Mat;
//import org.opencv.core.CvType;
//OpenCV opencv;
//PVector loca;
//char t='q';
//int n=0;
//Serial myPort;  
//Capture video;
//String s1, s2;
//color trackColor; 
//float threshold = 30;
//float distThreshold = 50;
//int u=0;
//int ccc=0;
//int d=0;
//PVector[] pin=new PVector[100];

//char v;
//int l=4;
//int g=0;
//int h=0;
//int k=0;
//float mx4=0;
//float my4=0;
//int bd=20;
//int ba=10;
//int y=0;
//ArrayList<Blob> holes = new ArrayList<Blob>();
//PVector aaa=new PVector(3, 2, 4);
//PVector bbb=new PVector(2, 0, 0);
//PImage card;
//int cardWidth = 450;
//int cardHeight = 450;
//int fff=0; 
//float[] tr=new float[100];
//float[] tg=new float[100];
//float[] tb=new float[100];
//int i=5;
//PVector[] x3=new PVector[1000];
//PVector[] x4=new PVector[1000];
//float[] kx=new float[1000];
//float[] ky=new float[1000];
//float ox;
//float oy;
//float[] nx=new float[1000];
//float[] ny=new float[1000];
//Contour contour;
//char a='z';
//void settings()
//{

//  size(640+cardWidth, 480);
//}
//void setup() 
//{
//  video = new Capture(this, Capture.list()[35]);//640,480,30);

//  video.start();
//  printArray(Capture.list());
//  myPort = new Serial(this, "COM9", 9600); 
//  opencv = new OpenCV(this, video);  

//  trackColor = color(255, 0, 0);

//  contour = opencv.findContours(false, true).get(0).getPolygonApproximation();
//  //contour.draw();
//  card = createImage(cardWidth, cardHeight, ARGB);
//}

//void captureEvent(Capture video) 
//{
//  video.read();
//}

//void keyPressed() 
//{
//  if (key=='w')
//  {
//    myPort.write('w');
//  } else if (key=='s')
//  {
//    threshold++;
//  } else if (key=='x')
//  {
//    threshold--;
//  } else if (key=='t')
//  {
//    t='a';
//  }
//}

//void draw() {
//  opencv = new OpenCV(this, video);
//  video.loadPixels();
//  opencv.loadImage(video);

//  if (u<4)
//  {

//    image(video, 0, 0);
//  } else //if(u>3) 
//  {
//    opencv.toPImage(warpPerspective(contour.getPoints(), cardWidth, cardHeight), card);
//    card.loadPixels();
//    opencv.loadImage(card);
//    opencv = new OpenCV(this, card);  

//    image(card, 0, 0);  

//    loca = opencv.max();
//    stroke(255, 0, 0);
//    strokeWeight(4);
//    noFill();
//    ellipse(loca.x, loca.y, 10, 10);
//    println(loca.x, loca.y);
//  }




//  holes.clear();
//  stroke(220);
//  strokeWeight(5);
//  //if(u>5)
//  //{
//  // for(y=5;y<u;y++)
//  //{
//  //point(kx[y],ky[y]);
//  //}
//  //}
//  //else 
//  //{
//  //}
//  /////////////
//  textSize(32);
//  //if(i==6)
//  //      {
//  //       text("PENTAGON",500,400); 
//  //      }
//  //      else if(i==9)
//  //      {
//  //       text("TRIANGLE",500,400); 
//  //      }
//  //        else if(i==12)
//  //      {
//  //       text("RECTANGLE",500,400); 
//  //      }
//  //      else
//  //      {
//  //                text("TRACK",500,400); 

//  //      }
//  ////////////
//  if (t=='a')
//  {
//    // println(a);

//    /////





//    for (int x = 0; x < card.width; x++ ) {
//      for (int y = 0; y < card.height; y++ ) {
//        int loc = x + y * card.width;
//        color currentColor = card.pixels[loc];
//        float r1 = red(currentColor);
//        float g1 = green(currentColor);
//        float b1 = blue(currentColor);

//        float d3=distSq(r1, g1, b1, tr[0], tg[0], tb[0]);
//        float d4=distSq(r1, g1, b1, tr[1], tg[1], tb[1]);
//        float d5=distSq(r1, g1, b1, tr[2], tg[2], tb[2]);
//        float d6=distSq(r1, g1, b1, tr[3], tg[3], tb[3]);
//        float d7=distSq(r1, g1, b1, tr[4], tg[4], tb[4]);

//        if (d3 < threshold*threshold||d4 < threshold*threshold||d5 < threshold*threshold||d6 < threshold*threshold||d7 < threshold*threshold) {
//          //  point(x,y);
//          boolean found = false;
//          for (Blob b : holes) {
//            if (b.isNear(x, y)) {
//              b.add(x, y);
//              found = true;
//              break;
//            }
//          }

//          if (!found) {
//            Blob b = new Blob(x, y);
//            holes.add(b);
//          }
//        }
//      }
//    }
//    int q=0;
//    for (Blob b : holes) {
//      if (b.size() > 100) {
//        x3[q]= b.show("X3", q);
//        nx[q]=x3[q].x;
//        ny[q]=x3[q].y;
//        q++;
//      }
//    }
//    stroke(255, 80, 100);
//    strokeWeight(2);
//    ///////////////////////////////////////////////////////////////
//    if (aaa.x>0)
//    {
//      fff=0;
//      //loop 0,1
//      if (ccc==0)
//      {
//        direc(kx[10], ky[10]); 
//        i=10;
//        //ccc=1;
//      } else if (ccc==1)
//      {
//        direc(kx[11], ky[11]);
//        i=11;
//        //ccc=2;
//      } else if (ccc==2)
//      {
//        direc(kx[9], ky[9]); 
//        i=9;
//        //ccc=3;
//        aaa.x=aaa.x-1;
//      }
//    } else if (aaa.y>0)
//    {
//      //loop 0,2  
//      fff=2;
//      if (ccc==0)
//      {
//        direc(kx[10], ky[10]); 
//        i=10;
//        //ccc=1;
//      } else if (ccc==1)
//      {
//        direc(kx[12], ky[12]); 
//        i=12;
//        //ccc=2;
//      } else if (ccc==2)
//      {
//        direc(kx[9], ky[9]); 
//        i=9;
//        //ccc=3;
//      }
//    } else if (aaa.z>0)
//    {
//      //loop 1,2  
//      fff=3;
//      if (ccc==0)
//      {
//        direc(kx[11], ky[11]); 
//        i=11;
//        //ccc=1;
//      } else if (ccc==1)
//      {
//        direc(kx[12], ky[12]); 
//        i=12;
//        //ccc=2;
//      } else if (ccc==2)
//      {
//        direc(kx[9], ky[9]); 
//        i=9;
//        //ccc=3;
//      }
//    } else if (bbb.x>0)
//    {
//      // to 0 
//      fff=4;
//      if (ccc==0)
//      {
//        direc(kx[10], ky[10]); 
//        i=10;
//        //ccc=1;
//      } else if (ccc==1)
//      {
//        direc(kx[9], ky[9]); 
//        i=9;
//        //ccc=2;
//      }
//    } else if (bbb.y>0)
//    {
//      // to 1 
//      fff=5;
//      if (ccc==0)
//      {
//        direc(kx[10], ky[10]); 
//        i=10;
//        //ccc=1;
//      } else if (ccc==1)
//      {
//        direc(kx[9], ky[9]); 
//        i=9;
//        //ccc=2;
//      }
//    } else if (bbb.z>0)
//    {
//      //to 2  
//      fff=6;
//      if (ccc==0)
//      {
//        direc(kx[10], ky[10]);
//        i=10;
//        //ccc=1;
//      } else if (ccc==1)
//      {
//        direc(kx[9], ky[9]); 
//        i=9;
//        //ccc=2;
//      }
//    }



















//    /////////////////////////////////////////////////////////////////
//    ox=loca.x;
//    oy=loca.y;
//    strokeWeight(5);
//    line(ox, oy, kx[i], ky[i]);
//    line(kx[i], ky[i], nx[0], ny[0]);
//    line(nx[0], ny[0], ox, oy);

//    /////////

//    // direc();

//    ////////
//    textAlign(RIGHT);
//    fill(0);
//    textSize(24);
//    text("distance threshold: " + distThreshold, width-10, 25);
//    text("color threshold: " + threshold, width-10, 50);
//    text(q, 400, 300);



//    if (myPort.available()>0)
//    {    
//      char a=myPort.readChar();
//      println(a);
//      if (a=='t' && n==0)
//      {
//        if (fff<4)
//        {
//          if (v=='s' && ccc!=2)// && (i%3)==0)
//          {
//            v='s';
//            fill(255, 0, 0);
//            textSize(32);
//          } else   if (v=='s' && ccc==2)// && (i%3)==0)
//          {
//            v='h';
//            fill(255, 0, 0);
//            textSize(32);
//          } else 
//          {
//          }
//        } else if (fff>3)
//        {
//          if (v=='s' && ccc!=1)
//          {
//            v='s';
//          } else if (v=='s' && ccc==1)
//          {

//            v='h';
//          } else 
//          {
//          }
//        }
//        myPort.write(v);
//      } else if (n==1)
//      {
//        // myPort.write('h');  
//        // n=2;
//      }
//      if (a=='e')
//      {
//        //println(i,u);
//        //++;
//        if (aaa.x>0 || aaa.y>0 || aaa.z>0)   
//        {
//          if (ccc==0)
//          {
//            ccc=1;
//          } else  if (ccc==1)
//          {
//            ccc=2;
//          }
//          if (ccc==2)
//          {
//            ccc=0;
//            if (fff==1)
//            {
//              aaa.x--;
//            } else  if (fff==2)
//            {
//              aaa.y--;
//            }
//            if (fff==3)
//            {
//              aaa.z--;
//            }
//          }
//        } else if (bbb.x>0 || bbb.y>0 || bbb.z>0)
//        {
//          if (ccc==0)
//          {
//            ccc=1;
//          } else  if (ccc==1)
//          {
//            ccc=0;
//            if (fff==4)
//            {
//              bbb.x--;
//            } else if (fff==5)
//            {
//              bbb.y--;
//            } else if (fff==6)
//            {
//              bbb.z--;
//            }
//          }
//        } else 
//        {

//          n=1;
//        }
//      }    
//      //if(i>u-1)        //blobs.size()-1)
//      //{
//      ////i=u-1;
//      // n=1;
//      ////myPort.write('s');
//      // //i=0;
//      //}
//    }
//  }
//} 
////fill(255,0,0);
////textSize(50);
////text(i,100,100);
////}

//float distSq(float x1, float y1, float x2, float y2)  
//{
//  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1);
//  return d;
//}


//float distSq(float x1, float y1, float z1, float x2, float y2, float z2) 
//{
//  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
//  return d;
//}

//void mousePressed() {
//  if (u<4)
//  {
//    pin[u]=new PVector(mouseX, mouseY);
//    println(pin[u]);
//  } else if (u<9)
//  {
//    int loc = mouseX + mouseY*card.width;
//    color tc = card.pixels[loc];
//    tr[u]=red(tc);
//    tg[u]=green(tc);
//    tb[u]=blue(tc);
//    println(tr[u], tg[u], tb[u]);
//  } else
//  {
//    kx[u]=mouseX;
//    ky[u]=mouseY-60;
//    // println(u);
//  }

//  u++;
//}
//Mat warpPerspective(ArrayList<PVector> inputPoints, int w, int h) {
//  Mat transform = getPerspectiveTransformation(inputPoints, w, h);
//  Mat unWarpedMarker = new Mat(w, h, CvType.CV_8UC1);    
//  Imgproc.warpPerspective(opencv.getColor(), unWarpedMarker, transform, new Size(w, h));
//  return unWarpedMarker;
//}

//Mat getPerspectiveTransformation(ArrayList<PVector> inputPoints, int w, int h) {
//  Point[] canonicalPoints = new Point[4];
//  canonicalPoints[0] = new Point(w, 0);
//  canonicalPoints[1] = new Point(0, 0);
//  canonicalPoints[2] = new Point(0, h);
//  canonicalPoints[3] = new Point(w, h);

//  MatOfPoint2f canonicalMarker = new MatOfPoint2f();
//  canonicalMarker.fromArray(canonicalPoints);

//  Point[] points = new Point[4];
//  for (int i = 0; i < 4; i++) {
//    float r=pin[i].x;
//    float e=pin[i].y;
//    points[i] = new Point(r, e);
//  }
//  MatOfPoint2f marker = new MatOfPoint2f(points);
//  return Imgproc.getPerspectiveTransform(marker, canonicalMarker);
//}