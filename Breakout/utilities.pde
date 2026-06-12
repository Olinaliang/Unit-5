void resetRound() {
  timer = 100;

  ballx = width/2;
  bally = height/2 + 200;
  balld = 25;

  vx = random(-3, 3);
  vy = 1;
  if (vx > -1 && vx < 1) {
    vx = 2;
  }
}

void resetGame() {
  lives = 3;
  score = 0;
  paddlex = width/2;
  paddled = 100;
  paddley = height;
  resetRound();
  int i = 0;
  while (i < n) {
    alive[i] = true;
    i = i + 1;
  }
}

void drawtext(String t, float x, float y, int shadow, int main) {
  fill(shadow);
  text(t, x + 4, y + 3);
  fill(main);
  text(t, x, y);
}
