String pi;
int []digits;
String[] s_digits;
int n;
int w = 450;
void setup()
{
  size(1000, 1000);
  
    pi = loadStrings("1-million-pi.txt")[0];
   //println(pi.length());
    s_digits = pi.split("");
   // println(s_digits.length);
    digits = int(s_digits); 
    n=0;
    background(0);
    translate(width/2, height/2);
    //stroke(255);
    //noFill();
    //ellipse(0,0,width,height);
}
void draw()
{
  translate(width/2, height/2);
  
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
  stroke(colo, 50);
  line(x1,y1,x2,y2);
 
}
