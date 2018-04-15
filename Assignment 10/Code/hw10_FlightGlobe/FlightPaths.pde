// Sub Class

class FlightPaths extends Geom {

  // Properties
  // No new properties
  // All properties inherited from super class - Graph

  // Default Constructors
  FlightPaths() {
  }
  
  // Parameterized Constructors
  FlightPaths(float lat, float lon) {
    super(lat, lon);
  }

  // Methods 
  // This method describes the sperical coordinate system which converts latitude and longitude to a 3D coordinate system
  // Draw Flight Routes
  void plot() {
    for (int i=0; i<data2.length; i++) {
      float theta1 = radians(data2[i][0]);
      float phi1 = radians(data2[i][1]) + PI;

      float x1 = r * cos(theta1) * cos (phi1);
      float y1 = - r * sin(theta1);
      float z1 = - r * cos(theta1) * sin (phi1);

      float theta2 = radians(data2[i][2]);
      float phi2 = radians(data2[i][3]) + PI;

      float x2 = r * cos(theta2) * cos (phi2);
      float y2 = - r * sin(theta2);
      float z2 = - r * cos(theta2) * sin (phi2);

      pushMatrix();
      translate(x1, y1, z1);
      popMatrix();

      pushMatrix();
      translate(x2, y2, z2);
      popMatrix();
      
      stroke(153, 235, 0, 75);
      strokeWeight(0.25);
      noFill();
      //curve(x1+(x2-x1)/2, y1+(y2-y1)/2, 50, x1, y1, z1, x2, y2, z2, x1+(x2-x1)/2, y1+(y2-y1)/2, 0);
      //curve(x1, y1, 50, x1, y1, z1, x2, y2, z2, x2, y2, 50);
      //curve(x1, 0, -50, x1, y1, z1, x2, y2, z2, x2, 0, -50);
      
      if(data2[i][0]>0 && data2[i][2]>0) {
        curve(x1, 5, -50, x1, y1, z1, x2, y2, z2, x2, 5, -50);
      } else if(data2[i][0]<0 && data2[i][2]<0) {
        curve(x1, -5, -50, x1, y1, z1, x2, y2, z2, x2, -5, -50);
      } else {
        curve(x1, 0, -50, x1, y1, z1, x2, y2, z2, x2, 0, -50);
      }
    }
  }
}