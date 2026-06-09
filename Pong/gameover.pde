void gameover() {
  theme.play();
  background(backgroundColor);
  textSize(80);
  if (leftscore >= 3) {
    text("LEFT WINS!", width/2, height/2 - 80, shadowColor, leftColor);
  } else {
    text("RIGHT WINS!", width/2, height/2 - 80, shadowColor, rightColor);
  }

  //final score
  textSize(45);
  fill(255);
  text(leftscore + "  -  " + rightscore, width/2, height/2 + 10);

  //main menu button
  rectButton("MAIN MENU", width/2, height/2 + 120, 350, 90);

  //instructions
  textSize(22);
  fill(255);
  text("First player to 3 points wins", width/2, height/2 + 210);
}

void gameoverClicks() {
  theme.rewind();
  resetGame();
  mode = INTRO;
}
