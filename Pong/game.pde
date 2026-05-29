void game() {
  background(0);
  
  //draw paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //move padddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty -5;
  if (downkey == true) righty = righty +5;
  
  //ball movement
  circle(ballx, bally, balld);
  ballx = ballx + ballvx;
  bally = bally + ballvy;
  if (ballx < balld/2 || ballx > width - balld/2) {
    ballvx = ballvx * -1;
  }
  if (bally < balld/2 || bally > height - balld/2) {
    ballvy = ballvy * -1;
  }
}

void gameClicks() {
}
