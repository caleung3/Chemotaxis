Walker[]  bob;
void setup(){
  size(800,800);
  strokeWeight(0);
  bob = new Walker[50];
  for(int i = 0; i<bob.length; i++)
  {
    int bobColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    bob[i] = new Walker(bobColor);
  }
}
void draw(){
  background(0);
  for(int i = 0; i<bob.length; i++)
  {
  bob[i].walk();
  bob[i].show();
  }
    strokeWeight(23);
    stroke(255, 127, 0);
    fill(0);
    ellipse(400,400,180,180);
    noFill();
    strokeWeight(28);
    arc(400, 400, 200, 70, 0, PI, OPEN);
    strokeWeight(0);
}
class Walker{ 
  int myX,myY, myColor;
  Walker(int c){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myColor = c;
  }
  void walk(){
if(400 > myX)
myX = myX+ (int)(Math.random()*5)-1;
else if(myX>=400)
myX = myX+(int)(Math.random()*5)-3;
if(400>myY)
myY = myY+(int)(Math.random()*5)-1;
else if (myY>=400)
myY = myY+(int)(Math.random()*5)-3;
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY, 25, 25);
  }
}
