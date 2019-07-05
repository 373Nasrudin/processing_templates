float x1, x2, x3, x4;
int y1, y2, y3, y4;
float speed1, speed2, speed3, speed4;
int score;

void setup() {
  size(1000, 1000);
  ellipseMode(CENTER);
  rectMode(CENTER);
  x1 = random(100, 900);
  x2 = random(50, 950);
  x3 = random(50, 950);
  x4 = random(100, 900);
  y1 = 0;
  y2 = 0;
  y3 = 0;
  y4 = 0;
  speed1 = random(18, 20);
  speed2 = random(20, 23);
  speed3 = random(23, 25);
  speed4 = random(15, 20);
  score = 0;
}

void draw() {
 
  //stage
  background(255);

  //ball1
  noStroke();
  y1 += speed1;
  if (y1>870&&x1+40>=mouseX&&x1-40<=mouseX) {
    score +=10;
    fill(255);
  } else {
    fill(80, 200, 240);
    ellipse(x1, y1, 50, 50);
  }

  //ball2
  noStroke();
  y2 += speed2;
  if (y2>880&&x2+40>=mouseX&&x2-40<=mouseX) {
    score +=15;
    fill(255);
  } else {
    fill(240, 200, 80);
  }
  ellipse(x2, y2, 30, 30);

  //ball3
  noStroke();
  y3 += speed3;
  if (y3>885&&x3+40>=mouseX&&x3-40<=mouseX) {
    score +=20;
    fill(255);
  } else {
    fill(60, 240, 40);
  }
  ellipse(x3, y3, 20, 20);

  //ball4
  noStroke();
  y4 += speed4;
  if (y4>875&&x4+40>=mouseX&&x4-40<=mouseX) {
    score -=15;
    fill(255);
  } else {
    fill(0);
  }
  ellipse(x4, y4, 40, 40);

  if (y1>1100) {
    reset1();
  }
  if (y2>1100) {
    reset2();
  }
  if (y3>1000) {
    reset3();
  }
  if (y4>1000) {
    reset4();
  }

  //Bar
  fill(210, 80, 200);
  rect(mouseX, 900, 80, 10, 10);

  Result();
}

void reset1() {
  x1= random(100, 900);
  y1 = 0;
  speed1 = random(18, 20);
}

void reset2() {
  x2 = random(50, 950);
  y2 = 0;
  speed2 = random(20, 23);
}

void reset3() {
  x3 = random(50, 950);
  y3 = 0;
  speed3 = random(23, 25);
}

void reset4() {
  x4 = random(100, 900);
  y4 = 0;
  speed4 = random(15, 20);
}

void Result() { 
int timer = millis();
  if (timer>30000) {
    noLoop();
    if (score<2000) {
      fill(200, 40, 100);
      textSize(80);
      text("Good", 350, 500);
    }
    if (score>2000&&score<5000) {
      fill(240, 150, 50);
      textSize(80);
      text("Great", 350, 500);
    }
    if (score>5000) {
      fill(230, 50, 70);
      textSize(80);
      text("Excellent", 300, 500);
    }
  }
}
