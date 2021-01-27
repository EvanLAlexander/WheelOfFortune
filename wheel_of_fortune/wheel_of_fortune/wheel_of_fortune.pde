
import processing.sound.*;

SoundFile file;
Wheel w;

boolean spin = false;
float rotator = .13;
boolean rotates = false;
int spins;
int rdm;
int score;
int turns = 3;
PFont f;
String text;
public void setup() {
  size(1000, 1000);
  background(0);
  w = new Wheel();
  f = createFont("Arial", 12, true); // Arial, 16 point, anti-aliasing on
  textFont(f, 30);
  file = new SoundFile(this, "Wheel Sound.mp3");
}

public void draw() {
  background(0, 0, 0);
  rdm = int(random(50, 100));
  fill(255);
  rect(350, 0, 300, 100);
  String text = "\n $ = " + score + " Turns = " + turns;
  fill(0);
  text(text, 350, 0);
  translate(width/2, height/2);
  fill(255);
  triangle(25, -300, -25, -300, 0, -250);
  rotate(rotator);
  if (turns > 0) {
    w.draw();
    if (spin ) {
      
      rotator += 0.261799;
      spins += 1;
    }
    if (spins >= rdm && spin) {
      
      spins = spins % 24 ;
      println(spins);
      file.stop();
      w.move();
      spin = false;
      turns -= 1;
    }
    
    
  }
  if (turns <= 0) {
    text = "\n Final Amount = " + score ;
    rotator = 0;
    background(0);
    rect(-150, -50, 300, 100);

    fill(0);
    text(text, -150, -25);
  }
}
void mousePressed() {
  if (spin) {
    
    spin = false;
    
  } else {
    file.play();
    spin = true;
    
  }
  if(turns <= 0){
  file.stop();
  }
}
