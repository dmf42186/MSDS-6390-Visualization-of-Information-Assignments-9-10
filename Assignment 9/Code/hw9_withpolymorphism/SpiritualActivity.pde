// Sub Class

class SpiritualActivity extends Graph {
  
  // Properties
  
  // Constructors
  SpiritualActivity() {
  }
  
  SpiritualActivity(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  
  
  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 14) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(175, 50, 150);
    ellipse(width/2+(width/2-125)*3/4, (height-100)/2+56.25, radius, radius);
    
    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Spiritual Activities", width/2+(width/2-125)*3/4-45, (height-100)/2+56.25+radius/2+20);
    text(freq*100/207213+"%", width/2+(width/2-125)*3/4-5, (height-100)/2+56.25+radius/2+40);
  }
}