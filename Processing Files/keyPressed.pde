// keyPressed() Processing function

void keyPressed() {
  if (lock && keyCode == ENTER) {
    lock = false;
    screen=1;
    setup1();
  }
  if (!lock) {
    switch (key) {
      case 'r':
      if (lives <= 0 || screen==3) {
        restart();
      }
      case 'e':
      if (screen == 1 && px >= 356 && px <= 403 && py >= 68 && py <= 92){
        if(egg){
          egg=false;
          loop();
        }
        else{
          noLoop();
          egg=true;
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
          text("Easter Egg",width/2,115);
          textSize(20);
          text("Welcome to Kinghts of Columbus",width/2,150);
          text("It's gameday and you bought a steak",width/2,180);
          text("Your speed has been enhanced",width/2,210);
          text("This effect is only applied once",width/2,240);
          dx=4;
          dy=4;
          popStyle();
        }
      }
      break;
      case 'i':
        if(info){
          info=false;
          loop();
        }
        else{
          noLoop();
          info=true;
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
          text("Crossing ND - Guide",width/2,115);
          textSize(20);
          text("Press (ENTER) to start",width/2,150);
          text("Press (W)(A)(S)(D) to move",width/2,180);
          text("Press (E) to interact",width/2,210);
          text("Press (I) to pause and toggle info",width/2,240);
          popStyle();
        }
        break;
      case 'w':
        py -= dy;
        switch (W) {
          case 1: player = playerW1; break;
          case 2: player = playerW2; break;
          case 3: player = playerW3; break;
          case 4: player = playerW4; break;
          case 5: player = playerW5; break;
          case 6: player = playerW6; break;
        }
        switch (screen){
          case 1:
            if (px >= 0 && px <= 202 && py >= 0 && py <= 68) py += dy;
            else if (px >= 303 && px <= 577 && py >= 0 && py <= 75) py += dy; 
            else if (px >= 564 && px <= 601 && py >= 178 && py <= 205) py += dy;
            else if (px >= 404 && px <= 620 && py >= 266 && py <= height) py += dy;
            else if (px >= 172 && px <= 340 && py >= 280 && py <= height) py += dy;
            break;
          case 2:
            if (px >= 64 && px <= 227 && py >= 0 && py <= 180) py += dy;
            else if (screen == 2 && px >= 333 && px <= width && py >= 0 && py <= 195) py += dy;            
            break;
        }
        W = (W % 6) + 1;
        if (py<=0) py+=dy;
        break;

      case 's':
        py += dy;
        switch (S) {
          case 1: player = playerS1; break;
          case 2: player = playerS2; break;
          case 3: player = playerS3; break;
          case 4: player = playerS4; break;
          case 5: player = playerS5; break;
          case 6: player = playerS6; break;
        }
        switch (screen){
          case 1:
            if (px >= 564 && px <= 601 && py >= 178 && py <= 205) py -= dy;
            else if (px >= 404 && px <= 620 && py >= 266 && py <= height) py -= dy;
            else if (px >= 172 && px <= 340 && py >= 280 && py <= height) py -= dy;
            break;
          case 2:
            if (screen == 2 && px >= 333 && px <= width && py >= 0 && py <= 195) py -= dy;
            break;
        }
        S = (S % 6) + 1;
        if (py>=height) py -= dy;
        break;

      case 'a':
        px -= dx;
        switch (A) {
          case 1: player = playerA1; break;
          case 2: player = playerA2; break;
          case 3: player = playerA3; break;
          case 4: player = playerA4; break;
          case 5: player = playerA5; break;
          case 6: player = playerA6; break;
        }
        switch (screen){
          case 1:
            if (px >= 0 && px <= 202 && py >= 0 && py <= 68) px += dx;
            else if (px >= 303 && px <= 577 && py >= 0 && py <= 75) px += dx;
            else if (px >= 564 && px <= 601 && py >= 178 && py <= 205) px += dx;
            else if (px >= 404 && px <= 620 && py >= 266 && py <= height) px += dx;
            else if (px >= 172 && px <= 340 && py >= 280 && py <= height) px += dx;
            break;
          case 2:
            if (px >= 64 && px <= 227 && py >= 0 && py <= 180) px += dx;
            else if (screen == 2 && px >= 333 && px <= width && py >= 0 && py <= 195) px += dx;
            break;
        }
        A = (A % 6) + 1;
        if (px <= 0) {
          if (screen > 1) {
            screen--;
            px = width - 10;
          } else {
            px = 0;
          }
        }
        break;

      case 'd':
        px += dx;
        switch (D) {
          case 1: player = playerD1; break;
          case 2: player = playerD2; break;
          case 3: player = playerD3; break;
          case 4: player = playerD4; break;
          case 5: player = playerD5; break;
          case 6: player = playerD6; break;
        }
        switch (screen){
          case 1:
            if (px >= 303 && px <= 577 && py >= 0 && py <= 75) px -= dx;
            else if (px >= 564 && px <= 601 && py >= 178 && py <= 205) px -= dx;
            else if (px >= 404 && px <= 620 && py >= 266 && py <= height) px -= dx;
            else if (px >= 172 && px <= 340 && py >= 280 && py <= height) px -= dx;
            break;
          case 2:
            if (px >= 64 && px <= 227 && py >= 0 && py <= 180) px -= dx;
            else if (screen == 2 && px >= 333 && px <= width && py >= 0 && py <= 195) px -= dx;
            break;
        }
        D = (D % 6) + 1;

        if (px >= width) {
          if (screen < 3) {
            screen++;
            px = 10;
          } else {
            px = width;
          }
        }
        break;
    }
  }
  println(mouseX,mouseY);
}
