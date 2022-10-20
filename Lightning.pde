int startX=0;
int startY=200;
int endX=0;
int endY=150;
void setup() {
  size(500, 500);
  strokeWeight(4);
  background(random(255), random(255), random(255));
}
void draw() {
  frameRate(3);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX<width)
  {
    endX = startX + (int) (Math.random()+9);
    endY = startY + ((int) (Math.random()*19))-9;

    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed() {
  startX=0;
  startY=200;
  endX=0;
  endY=150;
}
