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
}
void draw() {
  background(0);

  if (frameCount % speed == 0) { //Sets a rhythm and speed, when we implement music this will change
    notes.add(new Note(floor(random(1, 3))));
  }
  for (int i = 0; i < notes.size(); i ++) {
    notes.get(i).update();
    notes.get(i).show();
    if (notes.get(i).y > 800) {
      notes.remove(i);
    }
  }
}

void keyPressed() {
  if (key == 'a') {
      checkDistance(1);
   }
   if (key == 's') {
      checkDistance(2);
   }
   if (key == 'd') {
      checkDistance(3);
   }
}
void checkDistance(int fretNumber) {
  println();
}
