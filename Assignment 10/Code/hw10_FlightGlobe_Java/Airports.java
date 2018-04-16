// Sub Class

// Import Processing libraries
import processing.core.*;

public class Airports extends Geom {

  // Properties
  float[][] data1;
  int r = 300;
    
  // Inherited properties from super class Geom

  // Default Constructors
  public Airports() {
  }
  
  // Parameterized Constructors
  public Airports(PApplet p, float lat, float lon, float[][] data1) {
    super(p, lat, lon);
    this.data1 = data1;
  }

  // Methods
  // This method describes the spherical coordinate system which converts latitude and longitude to a 3D coordinate system
  // Draw Airports
  public void plot() {
    for (int i=0; i < data1.length; i++) {
      float theta = p.radians(data1[i][0]);
      float phi = p.radians(data1[i][1]) + p.PI;

      float x = r * p.cos(theta) * p.cos(phi);
      float y = - r * p.sin(theta);
      float z = - r * p.cos(theta) * p.sin(phi);
      
      p.pushMatrix();
      p.translate(x, y, z);
      p.noStroke();
      p.fill(255, 0, 0);
      p.sphere(1);
      p.popMatrix();
    }
  }
}