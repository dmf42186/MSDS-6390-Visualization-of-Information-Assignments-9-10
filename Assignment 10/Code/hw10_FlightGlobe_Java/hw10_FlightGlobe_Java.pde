//////////******************************************************//////////
//////////******************************************************//////////
/////*****                                                      *****/////
/////*****  Program to Visualize a 3D Worldwide Flight Network  *****/////
/////*****                                                      *****/////
//////////******************************************************//////////
//////////******************************************************//////////


//Data Source:  https://openflights.org/data.html
//Image Source:  https://visibleearth.nasa.gov/view.php?id=73909

///***  Define Objects & Variables   ***///

PFont Font1;

PShape globe;
PImage world;
float angle;
int r = 300;

float[][] data1;
float[][] data2;

Airports ap;
FlightPaths fp;

// Set up Frame for Sketch & Instantiation of Objects

void setup() {
  size(1000, 1000, P3D);
  data1 = new float[0][2];
  data2 = new float[0][4];
  ap = new Airports();
  ap.p = this;
  fp = new FlightPaths();
  fp.p = this;
}

//  Load Data from External Data Files

void loadData() {
  
  Table airport = loadTable("airports.csv", "header");                          // Load Latitude and Longitude for Airports
  
  int rowCounter1 = 0;  
  for(int i=0; i< airport.getRowCount(); i++) {
    rowCounter1 += 1;
  }
  
  data1 = new float[rowCounter1][2];  
  
  int rowIndex1 = 0;  
  for(int i=0; i< airport.getRowCount(); i++) {
    TableRow row1 = airport.getRow(i);
    float lat = row1.getFloat("Latitude");
    float lon = row1.getFloat("Longitude");
      
    data1[rowIndex1][0] = lat;
    data1[rowIndex1][1] = lon;
    
    rowIndex1 += 1;
     
  } 
  
  ap.data1 = data1;
    
  Table flightroute = loadTable("Flight_Route_Map.csv", "header");              // Load Latitude and Longitude for Origin and Destination of Flights
  
  int rowCounter2 = 0;  
  for(int i=0; i< flightroute.getRowCount(); i++) {
    rowCounter2 += 1;
  }
  
  data2 = new float[rowCounter2][4];  
  
  int rowIndex2 = 0;  
  for(int i=0; i< flightroute.getRowCount(); i++) {
    TableRow row2 = flightroute.getRow(i);
    float lat1 = row2.getFloat("Latitude1");
    float lon1 = row2.getFloat("Longitude1");
    float lat2 = row2.getFloat("Latitude2");
    float lon2 = row2.getFloat("Longitude2");
      
    data2[rowIndex2][0] = lat1;
    data2[rowIndex2][1] = lon1;
    data2[rowIndex2][2] = lat2;
    data2[rowIndex2][3] = lon2;
    
    rowIndex2 += 1;
  } 
  
  fp.data2 = data2;
}

// Call Functions & Classes

public void draw() {
  background(0);
  
  loadData();
  
  Font1 = createFont("Calibri Bold", 60);
  fill(255, 175, 0);
  textFont(Font1);
  text("Flight Globe", width/2-160, 100);
  
  fill(255);
  rotate();
  
  ap.plot();
  fp.plot();
}

void rotate() {
  noFill();
  world = loadImage("worldmap.jpg");               // Load Image of World Map
  
  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(world);                         // Wrap Globe with World Map 
  
  translate(width/2, height/2+50);
  lights();

  rotateY(angle);                                  // Rotate Globe around Y-axis
  angle += 0.1;
  shape(globe);
}