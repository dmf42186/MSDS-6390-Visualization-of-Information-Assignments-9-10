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
    ellipse(locx, locy, radius, radius);
  }
}