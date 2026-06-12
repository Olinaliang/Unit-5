PImage[] gif;
int numberOfFrames;
int f;

void setup() {
  
  numberOfFrames = 23;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames){
    gif[i] = loadImage("frame_"+i+"_delay-0.08s.gif");
    i++;
  }
  size(800,800);
}

void draw() {
  background(255);
  image(gif[f], 0,0, width, height);
  if(frameCount % 1/1000 ==0) f = f + 1;
  if(f == numberOfFrames) f = 0;
}
