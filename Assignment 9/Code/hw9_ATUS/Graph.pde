// Super Class

class Graph {
  
  // Properties 
  float locx;
  float locy;
  float radius;
  float time;
    
  // Constructors
  Graph() {
  }
  
  Graph(float locx, float locy, float radius, float time) {
    this.locx = locx;
    this.locy = locy;
    this.radius = radius;
    this.time = time;
  }
  
  // Methods
  void drawBubble(float locx, float locy, float time) {    
    int freq = 0;
    int tot_freq = 0;
    float pct = 0;
    for (int i=0; i< data.length; i++) {
      if ( time >= data[i][3] && time <= data[i][4]) {
        freq += 1;
        tot_freq += 1;
        pct = freq*100/tot_freq;
      }
    }
    //println(pct);
    radius = map(pct, 0, 100, 0, 400);
    ellipse(locx, locy, radius, radius);
  }
}