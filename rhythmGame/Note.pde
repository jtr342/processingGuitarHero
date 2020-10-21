class Note {
  float x;
  float y = 0;
  color c;
  float speedY = 10;
  
  Note(float x, float y, color c){
    this.x = x;
    this.y = y;
    this.c = c;
  }
  
  void update(){
    y = y + speedY;
    if (y > 800) {
      y = -600;
    }
  }
  void show(){
    fill(c);
    circle(x,y,50);
  }
}
