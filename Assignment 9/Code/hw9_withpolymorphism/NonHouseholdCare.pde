// Sub Class

class NonHouseholdCare extends Graph {
  
  // Properties
  
  // Constructors
  NonHouseholdCare() {
  }
  
  NonHouseholdCare(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  
  
  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 4) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(100, 120, 50);
    ellipse(125+(width/2-125)*2/4, (height-100)/2-112.5, radius, radius);
    
    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Non-Household Care", 125+(width/2-125)*2/4-50, (height-100)/2-112.5+radius/2+20);
    text(freq*100/207213+"%", 125+(width/2-125)*2/4-5, (height-100)/2-112.5+radius/2+40);
  }
}