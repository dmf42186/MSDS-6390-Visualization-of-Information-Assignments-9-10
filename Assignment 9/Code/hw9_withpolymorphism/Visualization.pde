class Visualization {
  
  // Properties
  Graph[] graphs;
  float locx;
  float locy;
  
  // Constructors
  Visualization() {
  }
  
  Visualization(Graph[] graphs) {
    this.graphs = graphs;
    
    for(int i = 0; i < graphs.length; i++) {
      graphs[i].drawBubble(locx, locy);
    }
  }
}