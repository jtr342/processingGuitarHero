class Fret {
  float x;
  float y = 700;
  color c;
  
  Fret(float x, color c) {
    this.x = x;
    this.c = c;
  }
  
  void update() {
  }
  
  void show() {
    fill(c);
    circle(x,y,50);
  }
}
