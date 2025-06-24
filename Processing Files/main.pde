// native setup() and draw() functions

void setup() {
  size(640,360);
  background0 = loadImage("background00.jpg");
  background1 = loadImage("background01.jpg");
  background2 = loadImage("background02.jpg");
  background3 = loadImage("background03.jpg");

  playerW1 = loadImage("front (1).png");
  playerW2 = loadImage("front (2).png");
  playerW3 = loadImage("front (3).png");
  playerW4 = loadImage("front (4).png");
  playerW5 = loadImage("front (5).png");
  playerW6 = loadImage("front (6).png");

  playerA1 = loadImage("left (1).png");
  playerA2 = loadImage("left (2).png");
  playerA3 = loadImage("left (3).png");
  playerA4 = loadImage("left (4).png");
  playerA5 = loadImage("left (5).png");
  playerA6 = loadImage("left (6).png");

  playerS1 = loadImage("back (1).png");
  playerS2 = loadImage("back (2).png");
  playerS3 = loadImage("back (3).png");
  playerS4 = loadImage("back (4).png");
  playerS5 = loadImage("back (5).png");
  playerS6 = loadImage("back (6).png");


  playerD1 = loadImage("right (1).png");
  playerD2 = loadImage("right (2).png");
  playerD3 = loadImage("right (3).png");
  playerD4 = loadImage("right (4).png");
  playerD5 = loadImage("right (5).png");
  playerD6 = loadImage("right (6).png");
  
  playerDead = loadImage("playerDead (1).png");
  
  NPC1 = new ArrayList<NPC>();
  NPC2 = new ArrayList<NPC>();
  
  npcDown[0] = loadImage("down (1).png");
  npcDown[1] = loadImage("down (2).png");
  npcDown[2] = loadImage("down (3).png");
  npcUp[0] = loadImage("up (1).png");
  npcUp[1] = loadImage("up (2).png");
  npcUp[2] = loadImage("up (3).png");
  
  title = createFont("stardewValleyTitle.ttf",72);
  text = createFont("stardewValleyText.ttf",32);
  
  player = playerW1;
  dw = width;
  dh = height;
  background0.resize(dw, dh);
  background1.resize(dw, dh);
  background2.resize(dw, dh);
  background3.resize(dw, dh);
  px = 30;
  py = dh / 2;
  imageMode(CENTER);
}

void draw() {
  switch (screen){
    case 0:  
      image(background0, width/2, height/2);
      pushStyle();
      rectMode(CENTER);
      noStroke();
      fill(200,150,100,240);
      rect(width/2,height/2-60,400,100);

      rect(width/2,height/2+50,100,40);

      textAlign(CENTER);
      textFont(title);
      fill(110,70,30);
      text("Crossing ND",width/2,height/2-30);

      textFont(text);
      fill(110,70,30);
      text("Start",width/2,height/2+60);
      popStyle();
      break;
    case 1: 
      image(background1, width/2, height/2);
      image(player, px, py);
      screen1();
      break;
    case 2: 
      image(background2, width/2, height/2);
      image(player, px, py);
      screen2();
      break;
    case 3:
      noLoop();
      image(background3, width/2, height/2);
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
        text("Congratulations!",width/2,115);
        textSize(20);
        text("You have crossed Notre Dame (for now)",width/2,150);
        text("Press (R) to reset",width/2,180);
        text("Game by Evaristo CAR using Processing",width/2,210);
        text("Special thanks to Prof. Ramzi",width/2,240);
      popStyle();
      break;
  }
  //println(mouseX,mouseY); // when debugging
}
