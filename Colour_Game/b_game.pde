void game() {
  background(#B4DFFF);
  noStroke();
  //false---------------------------------------------------------------
  fill(0);
  rect(0, 0, 400, 800);
  fill(255);
  text("FALSE", 200, 150);
  //true---------------------------------------------------------------
  fill(255);
  rect(400, 0, 400, 800);
  fill(0);
  text("TRUE", 600, 150);
  //colours------------------------------------------------------------
  fill(colors[colorchoice]);
  text(words.get(choice), width/2, height/2);
  //points-------------------------------------------------------------
  fill(180);
  text(points, 400, 700);
  println(colorchoice, choice);
}

void gameClicks() {
  puzzle = int(random(0, 2));
  if (mouseX > 0 && mouseX < 400) {   
    if (choice == colorchoice) {
      mode = gameover;
    } else {
      points++;
    }
  } else if (mouseX > 300 && mouseX < 800) {
    if(choice == colorchoice) {
      points++;
    } else {
      mode = gameover;
    }
  }
  if (puzzle == 0) { 
    choice = int(random(0, 6));
    colorchoice = int(random(0, 6));
    if (choice == colorchoice) colorchoice = int(random(0, 6));
  } else if (puzzle == 1) {
    choice = int(random(0, 6));
    colorchoice = choice;
  }
}
