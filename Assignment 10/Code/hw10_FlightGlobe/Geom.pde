// Super Class

abstract class Geom {
  // Properties
  float lat = 0.0;
  float lon = 0.0;
  
  // Default Constructors
  Geom() {
  }
  
  // Parameterized Constructors
  Geom(float lat, float lon) {
    this.lat = lat;
    this.lon = lon;
  }
  
  // Methods
  // This method describes the sperical coordinate system which converts latitude and longitude to a 3D coordinate system
  void plot() {
    float theta = radians(lat);
    float phi = radians(lon) + PI;

    float x = r * cos(theta) * cos (phi);
    float y = - r * sin(theta);
    float z = - r * cos(theta) * sin (phi);

    pushMatrix();
    translate(x, y, z);
    popMatrix();
  }
}