// all global variables (could have less... but I'm not a CS major lol)

PImage background0, background1, background2, background3, player;
PImage playerDead, playerW1, playerW2, playerW3, playerW4, playerW5, playerW6, playerA1, playerA2, playerA3, playerA4, playerA5, playerA6, playerS1, playerS2, playerS3, playerS4, playerS5, playerS6, playerD1, playerD2, playerD3, playerD4, playerD5, playerD6;
PImage greenW, goldW, blueW, greenS, goldS, blueS;
PFont text, title;
int dw, dh;
float px, py;
float dx = 3;
float dy = 3;
boolean lock = true;
int W = 1;
int A = 1;
int S = 1;
int D = 1;
int screen = 0;
boolean info = false;
boolean egg = false;
PImage[] npcDown = new PImage[3];
PImage[] npcUp = new PImage[3];
ArrayList<NPC> NPC1;
ArrayList<NPC> NPC2;
int lives = 1;
