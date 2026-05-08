//Olina Liang
//2-4

//Mode Variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

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
 d = 200;
 vx = random (-5,5);
 vy = random (-5,5);
 score = 0;
 lives =3;
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
  } else {
    println("Erroe: Mode = " + mode);
  }
}
