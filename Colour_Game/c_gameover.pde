void gameover() {
  if (points < highscore) {
    background(#ACF3FA);
    fill(0);
    text("GAMEOVER", width/2, height/2);
  } else {
    background(#ACF3FA);
    fill(0);
    text("NEW", width/2, 300);
    text("HIGH SCORE", width/2, height/2);
    text(highscore, width/2, 500);
  }
}
