void gameover() {
  image(gif.get(n), 0, 0);
  if (frameCount % 5 == 0) {
    n = n + 1;
  }
  if (n > 55) {
    n = 0;
  }
  textFont(font, 160);
  if (points < highscore) {
    fill(0);
    text("GAMEOVER", width/2, height/2);
  } else {
    fill(0);
    text("NEW", width/2, 300);
    text("HIGH SCORE", width/2, height/2);
    textFont(numberfont);
    text(highscore, width/2, 500);
  }
}
