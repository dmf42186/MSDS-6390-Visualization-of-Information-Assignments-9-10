// Sub Class

// Import Processing libraries
import processing.core.*;

public class FlightPaths extends Geom {

  // Properties
  float[][] data2;
  int r = 300;
  
  // Inherited properties from super class - Graph

  // Default Constructors
  public FlightPaths() {
  }
  
  // Parameterized Constructors
  public FlightPaths(PApplet p, float lat, float lon, float[][] data2) {
    super(p, lat, lon);
    this.data2 = data2;
  }

  // Methods 
  // This method describes the spherical coordinate system which converts latitude and longitude to a 3D coordinate system
  // Draw Flight Routes
  public void plot() {
    for (int i=0; i < data2.length; i++) {
      float theta1 = p.radians(data2[i][0]);
      float phi1 = p.radians(data2[i][1]) + p.PI;

      float x1 = r * p.cos(theta1) * p.cos(phi1);
      float y1 = - r * p.sin(theta1);
      float z1 = - r * p.cos(theta1) * p.sin(phi1);

      float theta2 = p.radians(data2[i][2]);
      float phi2 = p.radians(data2[i][3]) + p.PI;

      float x2 = r * p.cos(theta2) * p.cos(phi2);
      float y2 = - r * p.sin(theta2);
      float z2 = - r * p.cos(theta2) * p.sin(phi2);

      p.pushMatrix();
      p.translate(x1, y1, z1);
      p.popMatrix();

      p.pushMatrix();
      p.translate(x2, y2, z2);
      p.popMatrix();
      
      p.stroke(153, 235, 0, 25);
      p.strokeWeight(1);
      p.noFill();
          
      if(data2[i][0]>0 && data2[i][2]>0) {
        p.curve(x1, 5, -50, x1, y1, z1, x2, y2, z2, x2, 5, -50);
      } else if(data2[i][0]<0 && data2[i][2]<0) {
        p.curve(x1, -5, -50, x1, y1, z1, x2, y2, z2, x2, -5, -50);
      } else {
        p.curve(x1, 0, -50, x1, y1, z1, x2, y2, z2, x2, 0, -50);
      }
    }
  }
}