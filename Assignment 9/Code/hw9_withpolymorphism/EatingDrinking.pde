// Sub Class

class EatingDrinking extends Graph {

  // Properties

  // Constructors
  EatingDrinking() {
  }

  EatingDrinking(float locx, float locy, float radius) {
    super(locx, locy, radius);
  }  

  //Methods  
  void drawBubble(float locx, float locy) {
    int freq = 0;
    for (int i=0; i< data.length; i++) {
      if (data[i][0] == 11) {
        freq += 1;
      }
    }
    println(freq);
    radius = map(freq, 0, 50000, 0, 200);
    fill(200, 120, 25);
    ellipse(125, (height-100)/2, radius, radius);

    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Eating / Drinking", 125-40, (height-100)/2+radius/2+20);
    text(freq*100/207213+"%", 125-5, (height-100)/2+radius/2+40);
  }
}