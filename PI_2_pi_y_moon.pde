String pi;
int []digits;
String[] s_digits;
int n;
int w = 500;

PGraphics canvas ;
void setup()
{
  size(1000, 1000);
  canvas = createGraphics(1000, 1000);
  canvas.beginDraw();
  
  
    pi = loadStrings("1-million-pi.txt")[0];
   //println(pi.length());
    s_digits = pi.split("");
   // println(s_digits.length);
    digits = int(s_digits); 
    n=0;
    canvas.background(0);
    canvas.translate(canvas.width/2, canvas.height/2);
    canvas.stroke(255);
    canvas.noFill();
    canvas.ellipse(0,0,width,height);
}
void draw()
{
 while(n<100000)
 {
    translate(canvas.width/2, canvas.height/2);
  
  int current = digits[n];
  int next = digits[n+1];
  n++;
  
  float shift = TWO_PI /10;
  float angle1 = map(current, 0, 10, 0, TWO_PI) + random(-shift , shift);
  float angle2 = map(next, 0, 10, 0, TWO_PI) + random(-shift , shift);
  
  
  float x1 = w * cos(angle1);
  float y1 = w * sin(angle1);
  
  float x2 = w * cos(angle2);
  float y2 = w * sin(angle2);
  float colo = map(current, 0, 9, 0, 255);
  if(angle1 == 360 || angle2 == 360)
  {  
    colo = 0;
  }
  canvas.stroke(colo, 80);
  canvas.line(x1,y1,x2,y2);
 
 }
 canvas.endDraw();
 image(canvas, 0, 0, width, height);
 canvas.save("PIy moon2.png"); 
}
