//Color variables
color lightBlue = color(50, 150, 250);
color white = color(255, 255, 255);
color red = color(255,0,0);
color yellow = color(255, 255, 0);
color green = color(4, 143, 16);
color purple = color(163, 28, 134);

//Player lives
int lives = 4;

//Player score
int score = 0;

//Paddle variables
int rX = 400;
int rY = 650;
int rHeight = 30;
int rWidth = 200;

//Circle variables
int cX;
int cY;
int cSize = 20;
int cRadius = cSize / 2;
int cVelX = 5;
int cVelY = 5;

//Brick variables
int bX_Array[] = {25, 130, 235, 340, 445, 550, 655, 760, 865, 970};
int bY_Array[] = {55, 110, 165, 220};
int bWidth = 100;
int bHeight = 50;
boolean hit[] = {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};

boolean left = false;
boolean right = false;

void setup() {
  size(1000, 700);
  cX = (width / 2) - 300;
  cY = height / 2;
}

void draw() {
  background(0,0,0);
  
  //Ball movement
  cX = cX + cVelX;
  cY = cY + cVelY;
  
  //Paddle (Rectangle)
  fill(lightBlue);
  rect(rX, rY, rWidth, rHeight);
  
  //White ball
  fill(white);
  circle(cX, cY, cSize);
  
  //Bricks
  //Row 1
  fill(red);
  
  //Brick 1
  if (!hit[0]){
    int bX = bX_Array[0];
    int bY = bY_Array[0];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[0] = true;
      score += 50;
    }
  }
  
  //Brick 2
  if (!hit[1]){
    int bX = bX_Array[1];
    int bY = bY_Array[0];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[1] = true;
      score += 50;
    }
  }

  //Brick 3
  if (!hit[2]){
    int bX = bX_Array[2];
    int bY3 = bY_Array[0];
    rect(bX, bY3, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY3 + bHeight && cY + cRadius > bY3 && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY3 || cY > bY3 + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[2] = true;
      score += 50;
    }
  }
  //Brick 4
  if (!hit[3]){
    int bX = bX_Array[3];
    int bY4 = bY_Array[0];
    rect(bX, bY4, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY4 + bHeight && cY + cRadius > bY4 && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY4 || cY > bY4 + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[3] = true;
      score += 50;
    }
  }
  //Brick 5
  if (!hit[4]){
    int bX = bX_Array[4];
    int bY5 = bY_Array[0];
    rect(bX, bY5, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY5 + bHeight && cY + cRadius > bY5 && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY5 || cY > bY5 + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[4] = true;
      score += 50;
    }
  }

  //Brick 6
  if (!hit[5]){
    int bX = bX_Array[5];
    int bY6 = bY_Array[0];
    rect(bX, bY6, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY6 + bHeight && cY + cRadius > bY6 && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY6 || cY > bY6 + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[5] = true;
      score += 50;
    }
  }

  //Brick 7
  if (!hit[6]){
    int bX = bX_Array[6];
    int bY7 = bY_Array[0];
    rect(bX, bY7, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY7 + bHeight && cY + cRadius > bY7 && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY7 || cY > bY7 + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[6] = true;
      score += 50;
    }
  }
  
  //Brick 8
  if (!hit[7]){
    int bX = bX_Array[7];
    int bY8 = bY_Array[0];
    rect(bX, bY8, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY8 + bHeight && cY + cRadius > bY8 && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY8 || cY > bY8 + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[7] = true;
      score += 50;
    }
  }
  
  //Brick 9
  if (!hit[8]){
    int bX = bX_Array[8];
    int bY9 = bY_Array[0];
    rect(bX, bY9, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY9 + bHeight && cY + cRadius > bY9 && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY9 || cY > bY9 + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[8] = true;
      score += 50;
    }
  }
  
  //Row 2
  fill(yellow);
  
  //Brick 10
  if (!hit[9]){
    int bX = bX_Array[0];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[9] = true;
      score += 50;
    }
  }
  
  //Brick 11
  if (!hit[10]){
    int bX = bX_Array[1];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[10] = true;
      score += 50;
    }
  }
  
  //Brick 12
  if (!hit[11]){
    int bX = bX_Array[2];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[11] = true;
      score += 50;
    }
  }
  
  //Brick 13
  if (!hit[12]){
    int bX = bX_Array[3];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[12] = true;
      score += 50;
    }
  }
  
  //Brick 14
  if (!hit[13]){
    int bX = bX_Array[4];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[13] = true;
      score += 50;
    }
  }
  
  //Brick 15
  if (!hit[14]){
    int bX = bX_Array[5];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[14] = true;
      score += 50;
    }
  }
  
  //Brick 16
  if (!hit[15]){
    int bX = bX_Array[6];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[15] = true;
      score += 50;
    }
  }
  
  //Brick 17
  if (!hit[16]){
    int bX = bX_Array[7];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[16] = true;
      score += 50;
    }
  }
  
  //Brick 18
  if (!hit[17]){
    int bX = bX_Array[8];
    int bY = bY_Array[1];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[17] = true;
      score += 50;
    }
  }
  
  //Row 3
  fill(green);
  
  //Brick 19
  if (!hit[18]){
    int bX = bX_Array[0];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[18] = true;
      score += 50;
    }
  }
  
  //Brick 20
  if (!hit[19]){
    int bX = bX_Array[1];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[19] = true;
      score += 50;
    }
  }
  
  //Brick 21
  if (!hit[20]){
    int bX = bX_Array[2];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[20] = true;
      score += 50;
    }
  }
  
  //Brick 22
  if (!hit[21]){
    int bX = bX_Array[3];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[21] = true;
      score += 50;
    }
  }
  
  //Brick 23
  if (!hit[22]){
    int bX = bX_Array[4];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[22] = true;
      score += 50;
    }
  }
  
  //Brick 24
  if (!hit[23]){
    int bX = bX_Array[5];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[23] = true;
      score += 50;
    }
  }
  
  //Brick 25
  if (!hit[24]){
    int bX = bX_Array[6];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[24] = true;
      score += 50;
    }
  }
  
  //Brick 26
  if (!hit[25]){
    int bX = bX_Array[7];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[25] = true;
      score += 50;
    }
  }
  
  //Brick 27
  if (!hit[26]){
    int bX = bX_Array[8];
    int bY = bY_Array[2];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[26] = true;
      score += 50;
    }
  }
  
  //Row 4
  fill(purple);
  
  //Brick 28
  if (!hit[27]){
    int bX = bX_Array[0];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[27] = true;
      score += 50;
    }
  }
  
  //Brick 29
  if (!hit[28]){
    int bX = bX_Array[1];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[28] = true;
      score += 50;
    }
  }
  
  //Brick 30
  if (!hit[29]){
    int bX = bX_Array[2];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[29] = true;
      score += 50;
    }
  }
  
  //Brick 31
  if (!hit[30]){
    int bX = bX_Array[3];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[30] = true;
      score += 50;
    }
  }
  
  //Brick 32
  if (!hit[31]){
    int bX = bX_Array[4];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[31] = true;
      score += 50;
    }
  }
  
  //Brick 33
  if (!hit[32]){
    int bX = bX_Array[5];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[32] = true;
      score += 50;
    }
  }
  
  //Brick 34
  if (!hit[33]){
    int bX = bX_Array[6];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[33] = true;
      score += 50;
    }
  }
  
  //Brick 35
  if (!hit[34]){
    int bX = bX_Array[7];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[34] = true;
      score += 50;
    }
  }
  
  //Brick 36
  if (!hit[35]){
    int bX = bX_Array[8];
    int bY = bY_Array[3];
    rect(bX, bY, bWidth, bHeight);
    
    //Ball hits brick
    if (cY - cRadius < bY + bHeight && cY + cRadius > bY && cX + cRadius > bX && cX - cRadius < bX + bWidth){
      
      //Ball hits top or bottom of brick
      if (cY < bY || cY > bY + bHeight){
        cVelY *= -1;
        
      //Ball hits left or right of brick
      }if (cX < bX || cX > bX + bWidth){
        cVelX *= -1;
      }
      hit[35] = true;
      score += 50;
    }
  }
  

  //Ball collide with right wall
  if (cX + cRadius > width){
    cVelX *= -1;
  }
  
  //Ball collide with top wall
  if (cY - cRadius < 0){
    cVelY *= -1;
  }
  
  //Ball collide with left wall
  if (cX - cRadius < 0){
    cVelX *= -1;
  }
  
  //Ball collide with bottom wall
  if (cY + cRadius > rY + rHeight){
    cVelX = 0;
    cVelY = 0;
    if (lives == 0){
      fill(red);
      text("Game Over!", width / 2, height / 2);
      textAlign(CENTER);
    }else{
      lives -= 1;
      delay(2500);
      cVelX = 5;
      cVelY = 5;
      cX = (rX + rWidth / 2)  + cVelX;
      cY =  (rY - 50) + cVelY;
    } 
  }
  
  //Ball collide with paddle
  if (cY + cRadius > rY && cY - cRadius < rY && cX + cRadius > rX && cX - cRadius < rX + rWidth){
    
    //Ball collide with top of paddle
    if (cY < rY){
      cVelY *= -1;
    }
    
    //Ball collide with left or right of paddle
    if (cX < rX || cX > rX + rWidth){
      cVelX *= -1;
    }  
  }
  
  
  //Move paddle left
  if (left && rX > 0){
    rX -= 6;
  }
  //Move paddle right
  if (right && rX + rWidth < width){
    rX += 6;
  }
  
  //Display score
  textSize(20);
  fill(red);
  text("Score: " + score, 50,50);
  textAlign(CENTER);
  
  //Display lives
  fill(red);
  text("Lives left: x" + lives, width - 75, 50);
  textAlign(CENTER);
  
  if (score == 1800){
    text("You Win!", width / 2, height / 2);
    textAlign(CENTER);
    cVelX = 0;
    cVelY = 0;
  }
}

void keyPressed() {
  if (key == 'a'){
    left = true;
  }
  
  if (key == 'd'){
    right = true;
  }
}

void keyReleased(){
  if (key == 'a'){
    left = false;
  }
 if (key == 'd'){
   right = false;
 }
}
