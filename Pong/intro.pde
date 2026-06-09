void intro() {
  theme.play();
  background(backgroundColor);

  textSize(140);
  drawtext("PONG", width/2, 150, shadowColor, ballColor);

  rectButton("1 PLAYER", width/2, 350, 300, 100);
  rectButton("2 PLAYER", width/2, 500, 300, 100);
}

void introClicks() {
  if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 350 - 50 && mouseY < 350 + 50) {
    success.rewind();
    success.play();
    AI = true;
    resetGame();
    mode = GAME;
  }

  if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 500 - 50 && mouseY < 500 + 50) {
    success.rewind();
    success.play();
    AI = false;
    resetGame();
    mode = GAME;
  }
}

void rectButton(String label, float x, float y, float w, float h) {
  if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
    strokeWeight(10);
    stroke(leftColor);
    fill(hoverColor);
  } else {
    strokeWeight(2);
    stroke(shadowColor);
    fill(buttonColor);
  }

  textSize(50);
  rect(x, y, w, h, 10);
  fill(shadowColor);
  text(label, x, y);
}
