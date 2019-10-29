Particle [] bob = new Particle [100];//your code here
boolean max = true;
void setup()
{
  //your code here
 
  size(300,300);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Particle();
  }
  for(int i = 0; i < bob.length/4; i++){
    bob[i] = new OddballParticle();
  }
 
}
void draw()
{
  background(255,255,200);
  stroke(0);
  ellipse(150,150,100,100);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].move();
  }
}
void mousePressed(){
  if (max==true){
    max = false;
  }else{
    max = true;
  }
   for(int i = 0; i < bob.length; i++){
      bob[i].myX = 150;
      bob[i].myY = 150;
  }
  
}
class Particle
{
  double myX, myY, myColor, myAngle, mySpeed;
  Particle(){
    myX = 300*0.5;
    myY = 300*0.5;
    mySpeed = (float)Math.random()*6-2;
    myAngle = (float)Math.random()*2*PI;
  }
  void move(){
    if (max == false){
         myX = myX + (float)Math.cos(myAngle) * mySpeed;
        myY = myY + (float)Math.sin(myAngle) * mySpeed;
    }else{
      myX = myX+0;
      myY = myY+0;
    }

  }
  void show(){
   // fill();
    fill(255,255,255);
    ellipse((float)myX,(float)myY,4,4);

  }
}

class OddballParticle extends Particle //inherits from Particle
{
  //your code here
  OddballParticle(){
    myX = 300*0.5;
    myY = 300*0.5;
    mySpeed = (float)Math.random()*4- 2;
    myAngle = (float)Math.random()*2*PI;
  }
    void move(){
    if (max == false){
         myX = myX + (float)Math.cos(myAngle) * mySpeed;
        myY = myY + (float)Math.sin(myAngle) * mySpeed;
    }else{
      myX = myX+0;
      myY = myY+0;
    }
  }
  void show(){
   // fill();
    fill(255,0,0);
    ellipse((float)myX,(float)myY,7,7);

  }
}


