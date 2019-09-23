int mode;
int points;
int puzzle;
int highscore;
float clock = 0;
final int intro = 0;
final int game = 1;
final int gameover = 2;
color red = #F2380A;
color orange = #FFB11F;
color yellow = #FFED1F;
color green = #9DF53B;
color blue = #79E5FF;
color purple = #ED98FF;
color pink = #F793EE;
PFont font;
PFont numberfont;

ArrayList<String> words = new ArrayList<String>();
color[]colors = {red, orange, yellow, green, blue, purple};

ArrayList<PImage> gif;
int n = 0;

int choice = int(random(0, 6));
int colorchoice = int(random(0, 6));

void setup() { 
  size(800, 800);
  mode = intro;
  words.add("RED");
  words.add("ORANGE");
  words.add("YELLOW");
  words.add("GREEN");
  words.add("BLUE");
  words.add("PURPLE");
  words.get(choice);
  font = createFont("CHOCD TRIAL___.otf", 250);
  numberfont = createFont("Ginchiest.ttf", 150);
  
  gif = new ArrayList<PImage>(56); 
  
  int i = 0;
  String zero;
  while(i <= 55) {
    if(i < 10) {
     zero = "0";
    } else {
     zero = ""; 
    }
   PImage temp = loadImage("frame_" + zero + i + "_delay-0.12s.jpg");
   temp.resize(width, height);
   gif.add(temp);
   i = i + 1; 
  }
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("error" + mode);
  }
}

void mousePressed() {
  if (mode == intro) {
    mode = game;
  } else if (mode == game) {
    gameClicks();
  } else if (mode == gameover) {
    mode = intro;
    points = 0;
  } else {
    println("error" + mode);
  }
}
