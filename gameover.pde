void gameover() {
  background(255,0,0);
  theme.pause();
  
  fill(255);
  textSize(80);
  text("GAME OVER", 400, 250);
  
  fill(0);
  textSize(40);
  text("Final Score: " + score, 400, 370);
  text("Highscore: " + highscore, 400, 430);
  
  //Restart Button
  stroke(0);
  strokeWeight(3);
  fill(255);
  rect(300, 520, 200, 100);
  
  fill(0);
  textSize(45);
  text("Restart", 400, 570);
}

void gameoverClicks () {
  if(mouseX > 300 && mouseX < 500 && mouseY > 520 && mouseY < 620) {
    mode = INTRO;
    theme.rewind();
    
    score = 0;
    lives = 3;
    x = width/2;
    y = height/2;
    vx = random(-5,5);
    vy = random(-5,5);
  }
}
