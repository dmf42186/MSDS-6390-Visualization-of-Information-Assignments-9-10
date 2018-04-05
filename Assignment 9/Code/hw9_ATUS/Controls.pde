import controlP5.*;
ControlP5 controlP5;

Range hour;
Slider slider;

Slider slider() {
  controlP5 = new ControlP5(this);
  
  
  
  /*String[] time = {"12 midnight", "1 a.m.", "2 a.m.", "3 a.m.", "4 a.m.", "5 a.m.", "6 a.m.", "7 a.m.", "8 a.m.", "9 a.m.", "10 a.m.", "11 a.m.", 
                  "12 noon", "1 p.m.", "2 p.m.", "3 p.m.", "4 p.m.", "5 p.m.", "6 p.m.", "7 p.m.", "8 p.m.", "9 p.m.", "10 p.m.", "11 p.m."};*/
  
  slider = controlP5.addSlider("Time of Day")
  .setSize(300, 30)
  .setPosition(width/2-150, 950)
  .setRange(0, 23)
  .setDecimalPrecision(0)
  .setNumberOfTickMarks(24)
  .showTickMarks(false)
  //.setCaptionLabel("String") 
  .setStringValue("String")
  .setHandleSize(20);
  
  return slider;
}