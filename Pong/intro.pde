void intro () {
  background(0);

  //title
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(80);
  text("PONG", 400, 170);

  //start button
  fill(255);
  stroke(255);
  strokeWeight(2);
  rect(300, 420, 200, 90);

  fill(0);
  textSize(40);
  text("START", 400, 465);
}

void introClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 420 && mouseY < 510) {
    mode = GAME;
  }
}
