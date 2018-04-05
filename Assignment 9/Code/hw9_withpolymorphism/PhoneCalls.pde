// Sub Class

class PhoneCalls extends Graph {
  
  // Properties
  
  // Constructors
  PhoneCalls() {
  }
  
  PhoneCalls(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  
  
  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 16) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(255, 255, 0);
    ellipse(125+(width/2-125)*3/4, (height-100)/2+168.75, radius, radius);
    
    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Phone Calls", 125+(width/2-125)*3/4-30, (height-100)/2+168.75+radius/2+20);
    text(freq*100/207213+"%", 125+(width/2-125)*3/4-5, (height-100)/2+168.75+radius/2+40);
  }
}