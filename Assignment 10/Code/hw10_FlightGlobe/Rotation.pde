PImage world;
float angle;

void rotate() {
  noFill();
  world = loadImage("worldmap.jpg");               // Load Image of World Map
  
  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(world);                         // Wrap Globe with World Map 
  
  translate(width/2, height/2+50);
  lights();

  rotateY(angle);                                  // Rotate Globe around Y-axis
  angle += 0.05;
  shape(globe);
}