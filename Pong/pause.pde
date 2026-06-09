void pause() {
  theme.play();
  background(gameColor);

  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scores
  textSize(55);
  text("" + leftscore, width/4, 80, shadowColor, leftColor);
  text("" + rightscore, 3*width/4, 80, shadowColor, rightColor);

  //paddles
  noStroke();
  fill(leftColor);
  circle(leftx, lefty, leftd);
  fill(rightColor);
  circle(rightx, righty, rightd);

  //ball
  fill(ballColor);
  circle(ballx, bally, balld);
  fill(0, 0, 0, 120);
  rect(width/2, height/2, width, height);

  //pause text
  textSize(90);
  text("PAUSED", width/2, height/2 - 60);

  textSize(30);
  fill(255);
  text("Click anywhere to resume", width/2, height/2 + 40);
}

void pauseClicks() {
  mode = GAME;
}
