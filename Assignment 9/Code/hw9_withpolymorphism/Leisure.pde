// Sub Class

class Leisure extends Graph {
  
  // Properties
  
  // Constructors
  Leisure() {
  }
  
  Leisure(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  
  
  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 12) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(0, 255, 50);
    ellipse(width/2+(width/2-125)*2/4, (height-100)/2+112.5, radius, radius);
    
    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Leisure", width/2+(width/2-125)*2/4-15, (height-100)/2+112.5+radius/2+20);
    text(freq*100/207213+"%", width/2+(width/2-125)*2/4-5, (height-100)/2+112.5+radius/2+40);
  }
}