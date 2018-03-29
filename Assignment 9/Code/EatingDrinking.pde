// Sub Class

class EatingDrinking extends Graph {
  
  // Properties
  
  // Constructors
  EatingDrinking() {
  }
  
  EatingDrinking(float locx, float locy, float radius/*, int[] color*/) {
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
    ellipse(locx, locy, radius, radius);
  }
}