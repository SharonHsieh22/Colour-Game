void intro() {
  background(#B4DFFF);

  image(gif.get(n), 0, 0);
  if (frameCount % 5 == 0) {
    n = n + 1;
  }
  if (n > 55) {
    n = 0;
  }

  fill(0);
  textFont(font, 230);
  textAlign(CENTER);
  text("COLOUR", width/2-20, height/2);
  text("GAME", width/2-10, height/2+160);
}
