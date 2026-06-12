import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;


//variables
float paddlex, paddley, paddled; //paddle
float ballx, bally, balld, vx, vy, timer;
float speed, a;
int lives, score;

//sound variables
Minim minim;
AudioPlayer theme, success, failure, gameover, clickSound;

//keyboard
boolean akey, dkey, leftkey, rightkey;

//gif
PImage[] gif;
int numberOfFrames;
int f;

//brick
int[] x;
int[] y;
int brickd;
int n;
int tempx, tempy;
boolean[] alive;

//colours
color orange = #FF9F1C;
color teal = #2EC4B6;
color crimson = #E71D36;
color lavender = #9B5DE5;
color sky = #00BBF9;
color pink = #F15BB5;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  pixelDensity(1);

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");

  //keyboard
  akey = dkey = rightkey = leftkey = false;

  //initialization
  paddlex = width/2;
  paddled = 100;
  paddley = height;
  a = 120;
  speed = 5;

  PFont myFont = createFont("Arial", 50);
  textFont(myFont);

  //gif
  numberOfFrames = 23;
  gif = new PImage[numberOfFrames];

  int f = 0;
  while (f < numberOfFrames) {
    String filename = "frame_" + f + "_delay-0.08s.gif";
    gif[f] = loadImage(filename);
    f++;
  }

  //set up 
  brickd = 50;
  n = 32;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];

  tempx = 75;
  tempy = 100;

  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;

    tempx = tempx + 90;

    if (tempx >= width - 50) {
      tempx = 75;
      tempy = tempy + 90;
    }

    i = i + 1;
  }

  //initialize ball and score
  resetGame();
}

void draw() {
  if (mode == INTRO) {
    theme.play();
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    theme.play();
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
