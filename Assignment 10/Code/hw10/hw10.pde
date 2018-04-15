//////////******************************************************//////////
//////////******************************************************//////////
/////*****                                                      *****/////
/////*****  Program to Visualize a 3D Worldwide Flight Network  *****/////
/////*****                                                      *****/////
//////////******************************************************//////////
//////////******************************************************//////////


//Data Source:  https://openflights.org/data.html
//Image Source:  https://visibleearth.nasa.gov/view.php?id=73909


///***  Define Variables   ***///

PFont Font1;

PImage world;
PShape globe;

int r = 300;
float angle;

float lat = 0;
float lon = 0;
float lat1 = 0;
float lon1 = 0;
float lat2 = 0;
float lon2 = 0;

Table airport;
Table flightroute;

void setup() {
  size(1000, 1000, P3D);
  world = loadImage("worldmap.jpg");
  airport = loadTable("airports.csv", "header");                     //Load Data for Airport Locations
  flightroute = loadTable("Flight_Route_Map.csv", "header");         //Load Data for Flight Routes
  
  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(world);  
}

void draw() {
  background(0);
  
  Font1 = createFont("Calibri Bold", 60);
  fill(255, 175, 0);
  textFont(Font1);
  text("Flight Globe", width/2-160, 100);

  translate(width/2, height/2+50);
  lights();

  rotateY(angle);
  angle += 0.05;
  shape(globe);


// Plot Airports Worldwide

  for (int i=0; i < airport.getRowCount(); i++) {
    TableRow row = airport.getRow(i);
    float lat = row.getFloat("Latitude");
    float lon = row.getFloat("Longitude");

    float theta = radians(lat);
    float phi = radians(lon) + PI;

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
  
  
  // Plot Flight Routes

  for (int i=0; i < flightroute.getRowCount(); i++) {
    TableRow row = flightroute.getRow(i);
    float lat1 = row.getFloat("Latitude1");
    float lon1 = row.getFloat("Longitude1");
    float lat2 = row.getFloat("Latitude2");
    float lon2 = row.getFloat("Longitude2");


    float theta1 = radians(lat1);
    float phi1 = radians(lon1) + PI;

    float x1 = r * cos(theta1) * cos (phi1);
    float y1 = - r * sin(theta1);
    float z1 = - r * cos(theta1) * sin (phi1);
    
    float theta2 = radians(lat2);
    float phi2 = radians(lon2) + PI;

    float x2 = r * cos(theta2) * cos (phi2);
    float y2 = - r * sin(theta2);
    float z2 = - r * cos(theta2) * sin (phi2);


    pushMatrix();
    translate(x1, y1, z1);
    //noStroke();
    //fill(153, 235, 0);
    //sphere(10);
    popMatrix();
    
    pushMatrix();
    translate(x2, y2, z2);
    //noStroke();
    //fill(153, 0, 50);
    //sphere(10);    
    //stroke(153, 235, 0/*, 75*/);
    //strokeWeight(0.0001);
    //line(x1, y1, z1, x2, y2, z2);
    popMatrix();
    
    stroke(153, 235, 0, 75);
    strokeWeight(0.25);
    noFill();
    curve(x1+(x2-x1)/2, y1+(y2-y1)/2, 50, x1, y1, z1, x2, y2, z2, x1+(x2-x1)/2, y1+(y2-y1)/2, 0);
  }

}