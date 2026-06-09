void intro() {
  theme.play();
  
  background(135, 206, 250);
  
  //Background
  noStroke();
  fill(255, 255, 0);
  circle(100, 100, 100);
  
  fill(255, 0, 0);
  circle(700, 120, 80);
  
  fill(0, 255, 0);
  circle(120, 700, 90);
  
  fill(255, 150, 0);
  circle(680, 680, 110);
  
  fill(255, 0, 255);
  circle(80, 400, 70);
  
  fill(0, 255, 255);
  circle(720, 400, 70);
  
  //Title
  fill(255, 0, 0);
  textSize(80);
  text("CLICKER GAME", 400, 250);
  fill(0);
  textSize(80);
  text("CLICKER GAME", 405, 255);
  
  //Highscore
  fill(0);
  textSize(40);
  text("Highscore: " + highscore, 400, 350);
  
  //Start Button
  fill(255, 255, 0);
  stroke(0);
  strokeWeight(4);
  rect(300, 430, 200, 100);
  fill(0);
  textSize(50);
  text("Start", 400, 480);
  
  //Options Button
  fill(255, 150, 0);
  stroke(0);
  strokeWeight(4);
  rect(300, 570, 200, 100);
  fill(0);
  textSize(45);
  text("Options", 400, 620);
  
  //tactile for Start
  if (mouseX > 300 && mouseX < 500 && mouseY > 430 && mouseY < 530) {
    stroke(255);
    strokeWeight(8);
    noFill();
    rect(300, 430, 200, 100);
  }
  
  //tactile for Options
  if (mouseX > 300 && mouseX < 500 && mouseY > 570 && mouseY < 670) {
    stroke(255);
    strokeWeight(8);
    noFill();
    rect(300, 570, 200, 100);
  }
}

void introClicks () {
  if(mouseX > 300 && mouseX < 500 && mouseY > 430 && mouseY < 530) {
    mode = GAME;
  }
  
  if(mouseX > 300 && mouseX < 500 && mouseY > 570 && mouseY < 670) {
    mode = OPTIONS;
  }
}
