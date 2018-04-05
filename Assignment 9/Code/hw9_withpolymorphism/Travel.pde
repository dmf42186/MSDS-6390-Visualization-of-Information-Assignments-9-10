// Sub Class

class Travel extends Graph {
  
  // Properties
  
  // Constructors
  Travel() {
  }
  
  Travel(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  
  
  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 18) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(255);
    ellipse(width/2, (height-100)/2, radius, radius);
    
    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Travel", width/2-15, (height-100)/2+radius/2+20);
    text(freq*100/207213+"%", width/2-5, (height-100)/2+radius/2+40);
  }
}