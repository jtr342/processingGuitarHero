class Note {
  float x;
  float y = 0;
  color c;
  float speedY = 10;
  
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
