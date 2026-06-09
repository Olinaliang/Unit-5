void game () {
  background(135, 206, 235);
  
  //Sun
  noStroke();
  fill(255, 204, 0);
  circle(700, 100, 120);
  
  //Clouds
  fill(255);
  circle(120, 120, 60);
  circle(160, 100, 70);
  circle(200, 120, 60);
  circle(500, 160, 50);
  circle(540, 140, 60);
  circle(580, 160, 50);
  
  //Ground
  fill(34, 177, 76);
  rect(0, 650, 800, 150);
  fill(185, 122, 87);
  stroke(120, 70, 40);
  strokeWeight(2);
  rect(250, 680, 60, 40);
  rect(310, 680, 60, 40);
  rect(370, 680, 60, 40);
  rect(430, 680, 60, 40);
  rect(490, 680, 60, 40);
  
  //Score
  fill(255);
  stroke(0);
  strokeWeight(3);
  rect(270, 20, 260, 210);
  
  fill(0);
  textSize(35);
  text("Score: " + score, 400, 60);
  text("Lives: " + lives, 400, 120);
  text("Highscore: " + highscore, 400, 180);
  
  //Pause Button
  stroke(0);
  strokeWeight(3);
  fill(255, 255, 0);
  circle(100,100,100);
  
  fill(0);
  textSize(20);
  text("PAUSE", 100, 100);
  
  //Display Target
  if (Target1 == true) {
    image(mario, x - d/2, y - d/2, d, d);
  }

  if (Target2 == true) {
    image(yoshi, x - d/2, y - d/2, d, d);
  }
  
  //Moving
  x = x + vx;
  y = y + vy;
  if (x < d/2 || x > width - d/2) {
    vx = vx * -1;
  }
  
  if (y < d/2 || y > height - d/2) {
    vy = vy * -1;
  }
} 

void gameClicks () {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    
    if (score > highscore) {
      highscore = score;
    }
    
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if(dist(mouseX, mouseY, 100,100) < 50) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    gameover.rewind();
    gameover.play();
    
    if (lives == 0) {
      mode = GAMEOVER;
    }
  } 
}
