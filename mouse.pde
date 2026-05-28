void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
    
  } else if(mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  }
}

void mouseDragged() {
  if (mode == OPTIONS) {
    if (mouseX > 170 && mouseX < 230 && mouseY > 450 && mouseY < 700) {
      sliderY = mouseY;
    }
  }
}
