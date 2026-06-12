void game() {
  theme.pause();
  background(20, 20, 35);
  timer= timer - 1;

  //display
  fill(255);
  textSize(22);
  text("Score: " + score, 90, 30);
  text("Lives: " + lives, width - 90, 30);

  //paddle
  noStroke();
  fill(pink);
  circle(paddlex, paddley, paddled);

  //move paddle
  if (akey == true || leftkey == true) paddlex = paddlex - 10;
  if (dkey == true || rightkey == true) paddlex = paddlex + 10;

  //ball
  fill(255);
  circle(ballx, bally, balld);

  //movement
  if (timer < 0) {
    ballx =ballx+vx;
    bally =bally+vy;
  }
  if (paddlex < paddled/2 + balld) paddlex = paddled/2 + balld;
  if (paddlex > width - paddled/2 - balld) paddlex = width - paddled/2 - balld;
  if (bally > height) {
    lives = lives - 1;
    failure.rewind();
    failure.play();

    if (lives <= 0) {
      mode = GAMEOVER;
    } else {
      resetRound();
    }
  }

  //bounce
  if (bally < balld/2) {
    vy= vy * -1;
  }
  if (ballx < balld/2 || ballx > width - balld/2) {
    vx = vx * -1;
  }

  //paddle collision
  if (dist(ballx, bally, paddlex, paddley) < paddled/2 + balld/2) {
    vx = (ballx - paddlex) / 5;
    vy = (bally - paddley) / 5;
  }

  //brick
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i++;
  }

  //win
  if (score == n) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  mode = PAUSE;
}

void manageBrick(int i) {
  if (y[i] == 100) fill(orange);
  if (y[i] == 190) fill(crimson);
  if (y[i] == 280) fill(teal);
  if (y[i] == 370) fill(sky);
  if (y[i] == 460) fill(lavender);

  circle(x[i], y[i], brickd);

  if (dist(ballx, bally, x[i], y[i]) < brickd/2 + balld/2) {
    vx = (ballx - x[i]) / 5;
    vy = (bally - y[i]) / 5;
    alive[i] = false;
    score = score + 1;
    success.rewind();
    success.play();
  }
}
