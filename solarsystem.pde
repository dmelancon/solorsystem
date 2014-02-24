import peasy.*;
PeasyCam cam;
Planet[] planets = new Planet[10];
Astroid[] astroids = new Astroid[1500];
Ring[] rings = new Ring[3500];
Star[] stars = new Star[20];
void setup() {
  size(1000, 1000, P3D);
  for (int i = 0; i < planets.length; i++) {
    planets[i] = new Planet();
  }
  for (int i = 0; i < astroids.length; i++) {
    astroids[i] = new Astroid();
  }
  for (int i = 0; i < rings.length; i++) {
    rings[i] = new Ring();
  }
 for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  background(255);
  cam = new PeasyCam(this, 200);
  cam.setMinimumDistance(-500);
  cam.setMaximumDistance(8500);
}

void draw() {
  background(10);
  lights();

  translate(width/2, height/2, -450);
  for (int i = 0; i < astroids.length; i++) {
    astroids[i].oscillate();
    astroids[i].display();
  }

   for (int i = 0; i<20; i++){
     fill(157, 127, 0,255-(i*10));
    sphereDetail(30);
    sphere(30+10*i);
     }
  for (int i = 0; i < planets.length; i++) {
    planets[i].oscillate();
    planets[i].display();
  }

  
  for (int i = 0; i < rings.length; i++) {
    rings[i].oscillate();
    rings[i].display();
  }
for (int i = 0; i < stars.length; i++) {
    stars[i].oscillate();
    stars[i].display();
  }
}

