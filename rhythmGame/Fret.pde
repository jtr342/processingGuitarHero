class Fret {
  float x;
  float y = 700;
  color c;
  
  Fret (int fretNumber) {
    x = fretNumber * 100;
    y = 700;
    
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
  
  void update() {
    fill(c);
    circle(x,y,75);
  }
  
  void show() {
    fill(c);
    circle(x,y,50);
  }
}
