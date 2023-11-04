
Partical [] b = new Partical[100];

void setup(){
background(0,0,0);
size(500,500);
noFill();

for(int i = 0; i < 96; i++){
b[i] = new Partical();
}
for(int i = 96; i < b.length; i++){
b[i] = new Oddball();
}

}
void draw(){
 for(int i =0; i < b.length; i++){
b[i].show();
b[i].move();
 }
}
class Partical{
double x;
double y;
double speed;
double angle; 
int col;
int col2;
int col3;
int size;
  Partical(){
  x = 250.0;
  y = 250.0;
  col = 255;
  col2 = 255;
  col3 = 255;
  speed = (double)(Math.random()*.5 + 1.5);
  angle = (double)(Math.random()*360 + 1);
  size = 10;
  }
  void move(){
   x = x +(Math.cos(angle) * speed);
   y = y + (Math.sin(angle) * speed);
  }
  void show(){
    fill(col,col2,0);
  ellipse((float)x,(float)y, 10 ,10);
  }
  
}
class Oddball extends Partical{
      Oddball(){
      x = 250.0;
      y= 250.0;
      col = 255;
      col2 = 0;
      col3 = 0;
      size = 20;
       speed = (double)(Math.random()*.2 + 5);
      angle = (double)(Math.random()*360 + 1);
      
      }
  }
