// Super Class

// Import Processing libraries
import processing.core.*;

public abstract class Geom extends PApplet {
  
  // Properties
  PApplet p;
  int r = 300;
  float lat = 0.0f;
  float lon = 0.0f;
  
  // Default Constructors
  public Geom() {
  }
  
  // Parameterized Constructors
  public Geom(PApplet p, float lat, float lon) {
    this.p = p;
    this.lat = lat;
    this.lon = lon;
  }
  
  // Methods
  // This method describes the spherical coordinate system which converts latitude and longitude to a 3D coordinate system
  public void plot() {
    float theta = p.radians(lat);
    float phi = p.radians(lon) + p.PI;

    float x = r * p.cos(theta) * p.cos(phi);
    float y = - r * p.sin(theta);
    float z = - r * p.cos(theta) * p.sin(phi);

    p.pushMatrix();
    p.translate(x, y, z);
    p.popMatrix();
  }
}