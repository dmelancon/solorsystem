class Ring {
  PVector angle;
  PVector velocity;
  PVector amplitude;
  float rotX, rotY;
  float size;


Ring() {
 angle = new PVector();
  
 velocity = new PVector(random( 0.025),0);
 amplitude = new PVector(random(2000,2900), random(2000,2600), random(200,700));
 rotX = (float) random(0,40);
 rotY = (float) random(0,40);
 size = random(2,10);
}
 void oscillate() {
    angle.add(velocity);
  }   
void display(){
  float x =  amplitude.x * cos(angle.x);  
  float z = (amplitude.x) * sin(angle.x);
//  float y = sin(angle.y)*amplitude.y;
    pushMatrix();
noStroke();
    fill(240);
    sphereDetail(4);
    rotateX(radians(rotX));
    rotateZ(radians(rotY));
    translate(x,0,z);

//    sphereDetail(4);
    sphere(size);
    popMatrix();
}

}
