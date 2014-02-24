class Star {
  PVector angle;
  PVector velocity;
  PVector amplitude;
  float rotX, rotY;
  float size;
color col;

Star() {
 angle = new PVector();
  col = color(random(127,255),random(127,255),random(127,255));
 velocity = new PVector(random( 0.03),0);
 amplitude = new PVector(random(600,6600), random(2000,2600), random(200,700));
 rotX = (float) random(0,90);
 rotY = (float) random(0,90);
 size = 2;
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
   
    rotateX(radians(rotX));
    rotateZ(radians(rotY));
    translate(x,0,z);
     for (int i = 0; i<10; i++){
     fill(col,255-(i*20));
    sphereDetail(30);
    sphere(size+2*i);
     }
    popMatrix();
      
}

}
