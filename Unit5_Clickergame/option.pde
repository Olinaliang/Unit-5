void options() {
  background(135, 206, 250);

  fill(0);
  textSize(70);
  text("OPTIONS", 400, 100);

  //Target
  stroke(0);
  strokeWeight(3);
  fill(255);
  rect(175, 200, 150, 150);
  rect(475, 200, 150, 150);

  //target outline
  stroke(255, 0, 0);
  strokeWeight(6);
  noFill();

  if (Target1 == true) {
    rect(175, 200, 150, 150);
  }

  if (Target2 == true) {
    rect(475, 200, 150, 150);
  }

  //images
  image(mario, 185, 210, 130, 130);
  image(yoshi, 485, 210, 130, 130);

  //Slider
  stroke(0);
  strokeWeight(5);
  line(200, 450, 200, 700);
  fill(255);
  strokeWeight(3);
  circle(200, sliderY, 40);
  d = map(sliderY, 700, 450, 50, 200);

  //Preview title
  fill(0);
  textSize(30);
  text("Preview", 400, 430);

  //Preview selected target
  if (Target1 == true) {
    image(mario, 400 - d/2, 575 - d/2, d, d);
  }

  if (Target2 == true) {
    image(yoshi, 400 - d/2, 575 - d/2, d, d);
  }

  //Ok button
  stroke(0);
  strokeWeight(3);
  fill(255);
  rect(550, 550, 150, 80);

  fill(0);
  textSize(45);
  text("OK", 625, 590);
}

void optionsClicks() {
  //Mario target
  if (mouseX > 175 && mouseX < 325 && mouseY > 200 && mouseY < 350) {
    Target1 = true;
    Target2 = false;
  }

  //Yoshi target
  if (mouseX > 475 && mouseX < 625 && mouseY > 200 && mouseY < 350) {
    Target1 = false;
    Target2 = true;
  }

  //Move slider
  if (mouseX > 170 && mouseX < 230 && mouseY > 450 && mouseY < 700) {
    sliderY = mouseY;
  }

  //Ok button
  if (mouseX > 550 && mouseX < 700 && mouseY > 550 && mouseY < 630) {
    mode = INTRO;
  }
}
