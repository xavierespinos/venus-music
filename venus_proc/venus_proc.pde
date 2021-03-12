import processing.sound.*;
import ddf.minim.*;
import ddf.minim.signals.*;


Minim minim;
AudioPlayer mySound;

PImage img;
AudioIn in;

void setup() {
  size(800, 800);
  img = loadImage("venus.jpg");
  img.resize(400, 400);
  //frameRate(30);
  minim = new Minim(this);
  mySound = minim.loadFile("song.mp3");    
  mySound.play();
  mySound.loop();
}

void draw() {
   background(255);
   noStroke();
   
   float tileSize = width/200;
   
   for(int i = 0; i < 100; ++i) {
     for(int j = 0; j < 100; ++j) {
     color c = img.get(int(i*tileSize), int(j*tileSize));
     //float size = map(brightness(c), 0, 255, tileSize, 0);
     float sound = ((mySound.right.level() + mySound.left.level()) /2)*200;
     System.out.println(sound);
     float sizeSound = map(50, 0, 255, tileSize, 0);
     
     
     fill(map(random(0,1), 0, 1, 0, 125), map(random(0,1), 0, 1, 0, 200),
     map(random(0,1), 0, 1, 0, 125)); //verd
     ellipse(i*tileSize, j*tileSize, sizeSound, sizeSound);
    
     fill(map(random(0,1), 0, 1, 0, 255), map(random(0,1), 0, 1, 0, 150), 0); //groc
     ellipse(i*tileSize+400, j*tileSize, sizeSound, sizeSound);
    
     fill(map(random(0,1), 0, 1, 0, 255), map(random(0,1), 0, 1, 0, 125),
     map(random(0,1), 0, 1, 0, 125));  //roig
     ellipse(i*tileSize, j*tileSize+400, sizeSound, sizeSound);  
    
     fill(map(random(0,1), 0, 1, 0, 125), map(random(0,1), 0, 1, 0, 125),
     map(random(0,1), 0, 1, 0, 255));  //blau
     ellipse(i*tileSize+400, j*tileSize+400, sizeSound, sizeSound);  
     
     }
   }

}
