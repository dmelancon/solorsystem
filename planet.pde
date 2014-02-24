class Planet {
  PVector angle;
  PVector vel2;
  PVector velocity;
  PVector amplitude;
  float rotX, rotY;
  float size;
  color col;
  float x, z;
Planet() {
 angle = new PVector();
 col = color(random(127,255),random(127,255),random(127,255),160);
 velocity = new PVector(random(-.040, 0.040),0);
 vel2 = new PVector(1,0);
 amplitude = new PVector(random(600,5500), random(20,height/2), random(200,700));
 rotX = (float) random(-90,40);
 rotY = (float) random(-40,90);
 size = random(30,105);
}
 void oscillate() {
    angle.add(velocity);
  }   

void display(){
   x =  amplitude.x * cos(angle.x);  
 z = amplitude.x * sin(angle.x);
 //  float y = sin(angle.y)*amplitude.y;
    pushMatrix();
noStroke();
    fill(col);
    rotateX(radians(rotX));
    rotateZ(radians(rotY));
    translate(x,0,z);

    sphereDetail(10);
    sphere(size);
    popMatrix();
}

}

