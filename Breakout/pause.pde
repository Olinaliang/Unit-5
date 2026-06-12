void pause() {
  fill(0, 0, 0, 10);
  rect(width/2, height/2, width, height);
  textSize(100);
  text("PAUSED", width/2, height/2 - 40);
  textSize(30);
  fill(255);
  text("Click to resume", width/2, height/2 + 70);
}

void pauseClicks() {
  mode = GAME;
}
