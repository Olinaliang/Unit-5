void pause() {
  background(150);
  
  theme.pause();
  
  fill(0);
  textSize(80);
  text("PAUSE", 400, 250);
  
  textSize(40);
  text("Score: " + score, 400, 350);
  text("Highscore: " + highscore, 400, 410);
  
  //Resume Button
  stroke(0);
  strokeWeight(3);
  fill(255);
  circle(100, 100, 100);
  
  fill(0);
  textSize(25);
  text("PLAY", 100, 100);
}

void pauseClicks () {
  if(dist(mouseX, mouseY, 100,100) < 50) {
    mode = GAME;
    theme.play();
  }
}
