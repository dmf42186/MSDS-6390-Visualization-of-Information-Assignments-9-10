// Sub Class

class Education extends Graph {
  
  // Properties
  
  // Constructors
  Education() {
  }
  
  Education(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  
  
  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 6) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(0, 255, 50);
    ellipse(width/2, 125, radius, radius);
    
    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Education", width/2-25, 125+radius/2+20);
    text(freq*100/207213+"%", width/2-5, 125+radius/2+40);
  }
}