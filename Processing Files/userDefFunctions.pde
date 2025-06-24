// user-defined functions for readability and easy future expansion

void hit(){
  lives--;
  if (lives==0) gameOver();
}

void gameOver(){
  player=playerDead;
  imageMode(CENTER);
  image(player,px,py);
  noLoop();
  pushStyle();
  rectMode(CENTER);
  stroke(110,70,30);
  strokeWeight(5);
  fill(200,150,100,240);
  rect(width/2,height/2,300,200);        
  textAlign(CENTER);
  textFont(text);
  fill(110,70,30);
  textSize(32);
  text("Game Over",width/2,115);
  textSize(20);
  text("You are out of lives",width/2,180);
  text("Press (R) to reset",width/2,210);
  dx=4;
  dy=4;
  popStyle();
}

void restart() {
  px = 30;
  py = height / 2;
  player = playerW1;
  
  lives = 1;
  screen = 1;
  W = 1;
  A = 1;
  S = 1;
  D = 1;
  dx = 3;
  dy = 3;

  NPC1.clear();
  NPC2.clear();
  setup1();
  
  lock = false;
  info = false;
  loop();
}
