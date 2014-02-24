class Astroid {
  PVector angle;
  PVector velocity;
  PVector amplitude;
  float rotX, rotY;
  float size;


Astroid() {
 angle = new PVector();
  
 velocity = new PVector(random( -0.020,0.020),0);
 amplitude = new PVector(random(360,1000), random(20,height/2), random(200,700));
 rotX = (float) random(55,60);
 rotY = (float) random(55,60);
 size = random(2,15);
}
 void oscillate() {
    angle.add(velocity);
  }   
void display(){
  float x =  amplitude.x * cos(angle.x);  
  float z = amplitude.x * sin(angle.x);
//  float y = sin(angle.y)*amplitude.y;
    pushMatrix();
noStroke();
    fill(6*amplitude.x/15,127,255-6*amplitude.x/20);
    sphereDetail(3);
    rotateX(radians(rotX));
    rotateZ(radians(rotY));
    translate(x,0,z);

//    sphereDetail(4);
    sphere(size);
    popMatrix();
}

}
