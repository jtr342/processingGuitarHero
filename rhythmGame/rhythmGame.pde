int size = 5;
int index = 0;
int speed = 50;
Fret green;
Fret red;
Fret yellow;

ArrayList<Note> notes = new ArrayList<Note>();
void setup() {
  background(0);
  size(400,800);
  green = new Fret(100, color(38, 204, 16));
  red = new Fret(200, color(255, 0, 19));
  yellow = new Fret(300, color(255, 227, 15));
  
  
  greenNotes[0] = new Note(100, -1600, color(38, 204, 16));
  greenNotes[1] = new Note(100, -1200, color(38, 204, 16));
  greenNotes[2] = new Note(100, -800, color(38, 204, 16));
  greenNotes[3] = new Note(100, -400, color(38, 204, 16));
  greenNotes[4] = new Note(100, 0, color(38, 204, 16));
  
  
}
void draw() {
  background(0);

  if (frameCount % speed == 0) {
    n.push(new Note(floor(random(1, 5))));
  }
}

void keyPressed() {
  if (key == 'a') {
      checkDistance("Green");
   }
}
void checkDistance(String c) {
  if (c == "Green") {
    
  }
}
