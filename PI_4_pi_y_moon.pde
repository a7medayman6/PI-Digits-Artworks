String pi;
int []digits;
String[] s_digits;
int n;
int w = 420;

void setup()
{
  size(900, 900);
  
    pi = loadStrings("1-million-pi.txt")[0];
    s_digits = pi.split("");
    digits = int(s_digits); 
    n=0;
    background(0);
    translate(width/2, height/2);
    //stroke(255);
    //ellipse(0,0,150,150);
    //stroke(0);
    //fill(0);
    //ellipse(0,0,150,150);
}
void draw()
{
   translate(width/2, height/2);s
    
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
    
    float colo = random(250);
    float colo2 = random(250);
    float colo3 = random(250);
   
    stroke(255, 50);
    line(x1,y1,0,0);
 }
    
