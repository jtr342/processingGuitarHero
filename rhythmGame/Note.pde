class Note {
  float x;
  float y;
  color c;
  float speedY = 10;
  // 1 = green
  // 2 = red
  // 3 = yellow
  Note(int fretNumber) {
    x = fretNumber * 100;
    y = -200;
    
    switch (fretNumber) { //Sets the color
      case 1:
        c = color(0, 255, 0);
        break;
      case 2:
        c = color(255, 0, 0);
        break;
      case 3:
        c = color(255, 255, 0);
        break;
      case 4:
        c = color(255, 140,0);
        break;
      case 5:
        c = color(0, 0, 255);
        break;
    }
  }
  void update(){
    y = y + speedY;
  }
  void show(){
    fill(c);
    circle(x,y,50);
  }
}
