void game() {
  theme.pause();
  background(gameColor);
  timer = timer - 1;

  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //display 
  textSize(55);
  text("" + leftscore, width/4, 80, shadowColor, leftColor);
  text("" + rightscore, 3*width/4, 80, shadowColor, rightColor);
  textSize(20);
  fill(255);
  if (AI == true) {
    text("1 PLAYER MODE", width/2, 30);
  } else {
    text("2 PLAYER MODE", width/2, 30);
  }

  //paddles
  noStroke();
  fill(leftColor);
  circle(leftx, lefty, leftd);
  fill(rightColor);
  circle(rightx, righty, rightd);

  //movement
  if (wkey == true) lefty = lefty - 6;
  if (skey == true) lefty = lefty + 6;
  if (AI == false) {
    if (upkey == true) righty = righty - 6;
    if (downkey == true) righty = righty + 6;
  } else {
    //AI movement
    if (ballx > width/2 && vx > 0) {
      if (bally < righty) righty = righty - 4;
      if (bally > righty) righty = righty + 4;
    }
  }

  //restriction
  if (lefty < leftd/2+balld) {
    lefty = leftd/2+balld;
  } else if (lefty > height - leftd/2-balld) {
    lefty = height - leftd/2-balld;
  }
  if (righty < rightd/2+balld) {
    righty = rightd/2+balld;
  } else if (righty > height - rightd/2-balld) {
    righty = height - rightd/2-balld;
  }

  //ball
  fill(ballColor);
  circle(ballx, bally, balld);

  //movement
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //bouncing off top and bottom
  if (bally < balld/2) {
    bally = balld/2;
    vy = vy * -1;
    success.rewind();
    success.play();
  }

  if (bally > height - balld/2) {
    bally = height - balld/2;
    vy = vy * -1;
    success.rewind();
    success.play();
  }

  //left paddle collision
  if (dist(ballx, bally, leftx, lefty) < leftd/2 + balld/2) {
    vx = (ballx - leftx) / 10;
    vy = (bally - lefty) / 10;
    success.rewind();
    success.play();
  }

  //right paddle collision
  if (dist(ballx, bally, rightx, righty) < rightd/2 + balld/2) {
    vx = (ballx - rightx) / 10;
    vy = (bally - righty) / 10;
    success.rewind();
    success.play();
  }

  //right player scores
  if (ballx < -balld/2) {
    rightscore++;
    failure.rewind();
    failure.play();
    resetRound();
  }

  //left player scores
  if (ballx > width + balld/2) {
    leftscore++;
    failure.rewind();
    failure.play();
    resetRound();
  }

  //gameover
  if (leftscore >= 3 || rightscore >= 3) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  mode = PAUSE;
}
