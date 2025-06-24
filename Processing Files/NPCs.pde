// user-defined NPC class

class NPC {
  float x;
  float y;
  float speed;
  float minY;
  float maxY;
  PImage npcImage;
  boolean up;

  public NPC(float initialX, float initialY, float npcSpeed, float minBoundaryY, float maxBoundaryY, PImage img, boolean up) {
    this.x = initialX;
    this.y = initialY;
    this.speed = npcSpeed;
    this.minY = minBoundaryY;
    this.maxY = maxBoundaryY;
    this.npcImage = img;
    this.up = up;
  }

  void display(PApplet p) {
    p.image(npcImage, x, y);
  }

  void update() {
    if (((px - 15 / 2 < x + 15 / 2) && (px + 15 / 2 > x - 15 / 2)&&(py - 30 / 2 < y + 30 / 2) && (py + 30 / 2 > y - 30 / 2))){
      hit();
    }
    if (up){
      y -= speed;
      if (y < maxY) {
        y = minY;
      }
    }
    else{
      y += speed;
      if (y > maxY) {
        y = minY;
      }
    }
  }
}
