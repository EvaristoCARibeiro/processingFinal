// screen 2 functions 

void screen2(){
  for (int i = 0; i < NPC2.size(); i++) {
    NPC currentNPC = NPC2.get(i);
    currentNPC.update();
    currentNPC.display(this);
  }
}
