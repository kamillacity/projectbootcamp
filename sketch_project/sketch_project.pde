float  n=5;
float wi, hi;
boolean shadow=true;

PImage myPic;

void setup(){

  size (1000, 600);
  wi=width/n;
  hi=height/n;

  myPic = loadImage("https://i5.walmartimages.ca/images/Enlarge/094/514/6000200094514.jpg");
}
void draw() {

  for (int c=0; c<width; c+=wi) {
    for (int r=0; r<height; r+=hi) {
      float rTint = 255-min(dist(mouseX, mouseY, c+wi/2, r+hi/2), 255);
      if (shadow) {
        tint(rTint, 0, 0);
      } else {
        tint(255);
      }
      image(myPic, c, r, wi, hi);
    }
  }
  println("Looping!",frameCount);
  noLoop();
}

void mouseMoved () {
  loop();
}

void mouseClicked () {
  shadow=!shadow;
  loop();
}

void KeyPressed() {

  save("myPic.jpg");
  println("Image Saved");
}
