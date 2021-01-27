public class Wheel{
  private PImage wheelPic;
  private float spintime;
  private int random = (int) Math.floor(Math.random() * 20 + 1);
  
  public Wheel(){

    this.spintime = int(random(24,34)) * (360/24);
    wheelPic = loadImage("wheel.png");
}
  public void move(){
  
  if(spins == 0){
    score += 600;
  }
  if(spins == 1){
    score += 300;
  }
  if(spins == 2){
    score += 700;
  }
  if(spins == 3){
    score += 450;
  }
  if(spins == 4){
    score += 350;
  }
  if(spins == 5){
    score += 800;
  }
  if(spins == 6){
    turns -= 1 ;
  }
  if(spins == 7){
    score += 300;
  }
  if(spins == 8){
    score += 400;
  }
  if(spins == 9){
    score += 600;
  }
  if(spins == 10){
    score = 0;
  }
  if(spins == 11){
    score += 900;
  }
  if(spins == 12){
    score += 300;
  }
  if(spins == 13){
    score += 500;
  }
  if(spins == 14){
    score += 900;
  }
  if(spins == 15){
    score += 300;
  }
  if(spins == 16){
    score += 400;
  }
  if(spins == 17){
    score += 550;
  }
  if(spins == 18){
    score += 800;
  }
  if(spins == 19){
    score += 500;
  }
  if(spins == 20){
    score += 300;
  }
  if(spins == 21){
    score += 500;
  }
  if(spins == 22){
    score += 600;
  }
  if(spins == 23){
    score += 5000;
  }
  println(score);
  }
  public void draw(){
    triangle(25,-300,-25,-300,0,-250);
    image(wheelPic,-wheelPic.width/2,-wheelPic.width/2);
  }
}
