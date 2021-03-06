// Sub Class

class HouseholdCare extends Graph {
  
  // Properties
  
  // Constructors
  HouseholdCare() {
  }
  
  HouseholdCare(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  
  
  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 3) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(225, 0, 225);
    ellipse(125+(width/2-125)*1/4, (height-100)/2-56.25, radius, radius);
    
    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Household Care", 125+(width/2-125)*1/4-30, (height-100)/2-56.25+radius/2+20);
    text(freq*100/207213+"%", 125+(width/2-125)*1/4-5, (height-100)/2-56.25+radius/2+40);
  }
}