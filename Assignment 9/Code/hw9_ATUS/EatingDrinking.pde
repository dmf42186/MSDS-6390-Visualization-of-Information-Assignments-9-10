// Sub Class

class EatingDrinking extends Graph {

  // Properties
  // No new properties
  // All properties inherited from super class - Graph

  // Constructors
  EatingDrinking() {
  }

  EatingDrinking(float locx, float locy, float radius, float time) {
    super(locx, locy, radius, time);
  }  

  //Methods  
  void drawBubble(float locx, float locy, float time) {
    int freq = 0;
    int tot_freq = 0;
    float pct = 0;
    for (int i=0; i< data.length; i++) {
      if ( time >= data[i][3] && time <= data[i][4]) {
        tot_freq += 1;
        if (data[i][0] == 11) {
          freq += 1;
        }
        pct = freq*100/tot_freq;
      }
    }
    //println(time);
    //println(freq);
    //println(tot_freq);
    //println(pct);
    radius = map(pct, 0, 100, 0, 500);
    noStroke();
    fill(200, 120, 25);
    ellipse(locx, locy, radius, radius);

    Font1 = createFont("Calibri Regular", 12);
    fill(255);
    textFont(Font1);
    text("Eating / Drinking", locx-40, locy+radius/2+20);
    text(pct+"%", locx-5, locy+radius/2+40);
  }  
}