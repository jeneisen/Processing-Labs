float depth = 400;
float z = 0;

void setup(){
 size(600, 600, P3D);
 noStroke();
}
 
 void draw() {
  background(15,15,15);
  
  float cameraX = width/1;
  float cameraY = height/1;
  
  translate(width/2, height/2, -depth/2);
  
  rotateY(frameCount*PI/500);
  
 float fov = cameraX/float(width) * PI/2;
 float cameraZ = cameraY / tan(fov / 2.0);
 float aspect = float(width)/float(height);
  
 perspective(fov, aspect, cameraZ/2000.0, cameraZ*6000.0);
 
  translate(width/10, height/10, depth/2);
  
  float mX = map(mouseX, 0, width, 100, width*2);
  camera(0, 0, mX, 0, 0, 0, 0, 1, 0);
  
 for(int i=0; i<2; i++) {
   float r = random(100);
   directionalLight(2, 83, 115, // Color
   1, 10, 0); // The x-, y-, z-axis direction'
   directionalLight(3, 115, 140, // Color
   10, 10, 0); // The x-, y-, z-axis direction'
 }
 
 for (int y = -2; y < 3; y++) {
 for (int x = -2; x < 3; x++) {
 for (int z = -2; z < 3; z++) {
   
 pushMatrix();
 translate(400*x, 300*y, 300*z);
 sphere(26);
 popMatrix();
 }
 
 rotateY(z);
 rotateZ(z);
 z = z + 0.0002;
 }}}
