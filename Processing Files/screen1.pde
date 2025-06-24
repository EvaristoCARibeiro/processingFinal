// screen 1 functions 

void setup1(){ // and 2 after some edits
  float delt1 = (height-81)/3;
  float delt2 = 250/3;
  float delt3 = (275-80)/3;
  float rand = 30;
  NPC1.add(new NPC(87, (0*delt1)+81, 3, 80, height, npcDown[int(random(0,3))],false));
  NPC1.add(new NPC(87, (1*delt1)+random(-rand,rand)+81, 3, 80, height, npcDown[int(random(0,3))],false));
  NPC1.add(new NPC(87, (2*delt1)+random(-rand,rand)+81, 3, 80, height, npcDown[int(random(0,3))],false));
  NPC1.add(new NPC(254, 250-(0*delt2), 3, 250, 0, npcUp[int(random(0,3))],true));
  NPC1.add(new NPC(254, 250-(1*delt2)+random(-rand,rand), 3, 250, 0, npcUp[int(random(0,3))],true));
  NPC1.add(new NPC(254, 250-(2*delt2)+random(-rand,rand), 3, 250, 0, npcUp[int(random(0,3))],true));
  NPC1.add(new NPC(464, (0*delt3)+81, 2, 80, 275, npcDown[int(random(0,3))],false));
  NPC1.add(new NPC(464, (1*delt3)+random(-rand,rand)+81, 2, 80, 275, npcDown[int(random(0,3))],false));
  NPC1.add(new NPC(464, (2*delt3)+random(-rand,rand)+81, 2, 80, 275, npcDown[int(random(0,3))],false));
  
  float delt4 = (height-160)/2;
  float delt5 = (height-180)/2;
  NPC2.add(new NPC(148, (0*delt4)+160, 3, height, 160, npcUp[int(random(0,3))],true));
  NPC2.add(new NPC(148, (1*delt4)+160, 3, height, 160, npcUp[int(random(0,3))],true));
  
  NPC2.add(new NPC(482, (0*delt5)+180, 3, height, 180, npcUp[int(random(0,3))],true));
  NPC2.add(new NPC(482, (1*delt5)+180+random(-rand,rand), 3, height, 180, npcUp[int(random(0,3))],true));
}

void screen1(){
  for (int i = 0; i < NPC1.size(); i++) {
    NPC currentNPC = NPC1.get(i);

    currentNPC.update();
    currentNPC.display(this);
  }
}
