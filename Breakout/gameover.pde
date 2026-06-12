void gameover() {
  image(gif[f], 0, 0, width, height);
  if (frameCount % 5 == 0) {
    f = f + 1;
  }

  if (f == numberOfFrames) {
    f = 0;
  }

  fill(255);
  textSize(70);

  if (score == n) {
    text("YOU WIN!", width/2, height/2 - 50, sky, teal);
  } else {
    text("GAME OVER", width/2, height/2 - 50, lavender, crimson);
  }

  textSize(28);
  fill(255);
  text("Score: " + score, width/2, height/2 + 50);
  textSize(22);
  text("Click to return to Main Menu", width/2, height/2 + 100);
}

void gameoverClicks() {
  theme.rewind();
  resetGame();
  mode = INTRO;
}
