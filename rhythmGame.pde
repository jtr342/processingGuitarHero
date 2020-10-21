int size = 5;
int index = 0;
Fret green;
Fret red;
Fret yellow;

Note[] greenNotes = new Note[size];
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
  green.show();
  red.show();
  yellow.show();
  for (int i = 0; i < size; i ++) {
    index = i;
    greenNotes[i].show();
    greenNotes[i].update();
  }
}

void keyPressed() {
  if (key == 'a') {
      float greenDistance = dist(greenNotes[index].x, greenNotes[index].y, green.x, green.y);
      if (greenDistance < 30) {
        println("perfect!");
      }
      else if (greenDistance < 40) {
        println("great!");
      }
      else if (greenDistance < 50) {
        println("good!");
      }
      else if (greenDistance < 60) {
        println("ok!");
      } else {
        println("miss!");
      }
   }
}
