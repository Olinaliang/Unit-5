import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Olina Liang
//2-4

//Mode Variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//Target Variables
float x, y, d;
float vx, vy; // target velocity
int score, lives;

// Color Palletts

void setup() {
 size(800,800);
 mode = INTRO;
 textAlign(CENTER, CENTER);
 
 //Target initialization
 x = width/2;
 y = height/2;
 d = 100;
 vx = random (-5,5);
 vy = random (-5,5);
 score = 0;
 lives = 3;
 
 //Minim
 minim = new Minim(this);
 theme = minim.loadFile("MUSIC.mp3");
 coin = minim.loadFile("SUCCESS.wav");
 gameover = minim.loadFile("FAILURE.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if(mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("mode Error: Mode is " + mode);
  }
}

//Sound variables
Minim minim;
AudioPlayer theme, coin, gameover;
