void game() {
  background(#B4DFFF);
  noStroke();  
  textFont(font, 130);
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
  //timer---------------------------------------------------------------
  fill(pink);
  arc(width/2, 500, 120, 120, PI/2+PI, PI/2+PI+clock, PIE);
  if (clock < TWO_PI) {
    clock = clock + .06;
  } else if(clock >= TWO_PI) {
   mode = gameover;
   clock = 0;
  }
  //colours------------------------------------------------------------
  fill(colors[colorchoice]);
  textFont(font, 150);
  text(words.get(choice), width/2, height/2);
  //points-------------------------------------------------------------
  fill(pink);
  textFont(numberfont);
  text(points, 400, 720);
  println(colorchoice, choice);
  if (points > highscore) {
    highscore = points;
  }
}

void gameClicks() {
  puzzle = int(random(0, 2));
  if (mouseX > 0 && mouseX < 400) {   
    if (choice == colorchoice) {
      mode = gameover;
    } else {
      points++;
      clock = 0;
    }
  } else if (mouseX > 300 && mouseX < 800) {
    if (choice == colorchoice) {
      points++;
      clock = 0;
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
