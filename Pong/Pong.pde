import ddf.minim.*;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entity variables
float leftx, lefty, leftd;
float rightx, righty, rightd;
float ballx, bally, balld, vx, vy;

//score and timer
int leftscore, rightscore, timer;

//1 player or 2 player
boolean AI;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//sound
PFont font;
Minim minim;
AudioPlayer theme, success, failure;

//colours
color backgroundColor = #E8DCCB;
color gameColor = #102A43;
color leftColor = #FF8FAB;
color rightColor = #8EECF5;
color ballColor = #FFF3B0;
color shadowColor = #3A2E39;
color buttonColor = #FFFFFF;
color hoverColor = #FFE066;

void setup() {
  pixelDensity(1);
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //sound
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");

  //font
  PFont myFont = createFont("Verdana", 50);
  textFont(myFont);
  
  //keyboard
  wkey = skey = upkey = downkey = false;
  
  //initialization
  resetGame();
}

void draw() {
  background(0);

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}

void resetGame() {
  
  //paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;

  //score
  leftscore = 0;
  rightscore = 0;

  //keyboard
  wkey = skey = upkey = downkey = false;

  //ball
  resetRound();
}

void resetRound() {
  timer = 100;

  ballx = width/2;
  bally = height/2;
  balld = 80;
  if (random(1) > 0.5) {
    vx = 5;
  } else {
    vx = -5;
  }
  vy = random(-4, 4);
  if (vy > -1 && vy < 1) {
    vy = 3;
  }
}

void drawtext(String t, float x, float y, int shadow, int main) {
  fill(shadow);
  text(t, x + 6, y + 6);
  fill(main);
  text(t, x, y);
}
