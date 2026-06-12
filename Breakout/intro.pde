void intro() {
  background(0);
  a = a + speed;
  image(gif[f], 0, 0, width, height);

  if (a > 145 || a < 105) {
    speed = speed * -1;
  }

  if (frameCount % 5 == 0) {
    f = f + 1;
  }

  if (f == numberOfFrames) {
    f = 0;
  }

  textSize(a);
  text("Brick Blast!", width/2, height/2 - 40, lavender, pink);

  textSize(28);
  text("click to start", width/2, height/2 + 90, sky, orange);
}

void introClicks() {
  mode = GAME;
}
