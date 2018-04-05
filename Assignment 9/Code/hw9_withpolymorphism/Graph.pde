// Super Class

class Graph {
  
  // Properties 
  float locx;
  float locy;
  float radius;
  
  
  // Constructors
  Graph() {
  }
  
  Graph(float locx, float locy, float radius) {
    this.locx = locx;
    this.locy = locy;
    this.radius = radius;
  }
  
  // Methods
  void drawBubble(float locx, float locy) {    
    int freq = 0;    
    for (int i=0; i< data.length; i++) {
      freq += 1;
    }
    println(freq);
    radius = map(freq, 0, 250000, 0, 400);
    ellipse(locx, locy, radius, radius);
  }
}