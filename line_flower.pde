float movelength = 20;
float gennums = 100;

float oldx;
float oldy;

float x;
float y;

void setup() {
  
  size (500,500);
  for(int i = 0; i < gennums; i ++) {
  
    x += ((int)random(-2,2)) * movelength;
    y += ((int)random(-2,2)) * movelength;

strokeWeight(3);
stroke(abs(x) * 2,abs(y) + 100,0);
    
    line(250 + oldx,250 + oldy,250 + x,250 +y); 
    line(250 - oldx,250 - oldy,250 - x,250 -y);
    line(250 + oldx,250 - oldy,250 + x,250 -y); 
    line(250 - oldx,250 + oldy,250 - x,250 +y); 
              
     line(250 + oldy,250 + oldx,250 + y,250 +x); 
     line(250 - oldy,250 - oldx,250 - y,250 -x);
     line(250 + oldy,250 - oldx,250 + y,250 -x); 
     line(250 - oldy,250 + oldx,250 - y,250 +x); 

 
     
     
oldx = x;
oldy = y;
  }
}
