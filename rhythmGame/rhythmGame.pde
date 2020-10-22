int speed = 20;

Fret green;
Fret red;
Fret yellow;
Fret blue;
Fret orange;

ArrayList<Note> notes = new ArrayList<Note>();

void setup() {
  background(0);
  size(600,800);
  green = new Fret(1);
  red = new Fret(2);
  yellow = new Fret(3);
  blue = new Fret(4);
  orange = new Fret(5);
}

void draw() {
  background(0);

  if (frameCount % speed == 0) { //Sets a rhythm and speed, when we implement music this will change
    int fretNumber = floor(random(1, 6));
    notes.add(new Note(fretNumber));
  }
  for (int i = 0; i < notes.size(); i ++) {
    notes.get(i).update();
    notes.get(i).show();
    if (notes.get(i).y > 800) {
      notes.remove(i);
    }
  }
  green.show();
  red.show();
  yellow.show();
  blue.show();
  orange.show();
}

void keyPressed() {
  if (key == 'a') {
      checkDistance(1);
      green.update();
   }
   if (key == 's') {
      checkDistance(2);
      red.update();
   }
   if (key == 'd') {
      checkDistance(3);
      yellow.update();
   }
   if (key == 'f') {
      checkDistance(4);
      blue.update();
   }
   if (key == 'g') {
      checkDistance(5);
      orange.update();
   }
}

void checkDistance(int fretNumber) {
  for (int i = 0; i < notes.size(); i++) {
    if ((notes.get(i).x / 100) == fretNumber) { // if the fret numbers are the same
      int distance = abs(int(notes.get(i).y) - 700); 
      if (distance < 10) {
        println("Perfect!");
      }
      else if (distance < 20) {
        println("Excellent!");
      }
      else if (distance < 30) {
        println("Great!");
      }
      else if (distance < 40) {
        println("Good!");
      } else {
        println("Miss!");
      }
    }
  }
}
