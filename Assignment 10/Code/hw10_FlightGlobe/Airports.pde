// Sub Class

class Airports extends Geom {

  // Properties
  // No new properties
  // All properties inherited from super class - Graph

  // Default Constructors
  Airports() {
  }
  
  // Parameterized Constructors
  Airports(float lat, float lon) {
    super(lat, lon);
  }

  // Methods
  // This method describes the sperical coordinate system which converts latitude and longitude to a 3D coordinate system
  // Draw Airports
  void plot() {
    for (int i=0; i<data1.length; i++) {
      float theta = radians(data1[i][0]);
      float phi = radians(data1[i][1]) + PI;

      float x = r * cos(theta) * cos (phi);
      float y = - r * sin(theta);
      float z = - r * cos(theta) * sin (phi);

      pushMatrix();
      translate(x, y, z);
      noStroke();
      fill(255, 0, 0);
      sphere(1);
      popMatrix();
    }
  }
}
