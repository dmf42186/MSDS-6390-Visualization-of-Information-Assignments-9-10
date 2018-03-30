import controlP5.*;
ControlP5 controlP5;

Range hour;
Button submit;
Slider slider;

void controls() {
  controlP5 = new ControlP5(this);
  
  //int startY = 50;
  
  //hour = controlP5.addRange("hour")
  //.setBroadcast(false) 
  //.setPosition(200, 700)
  //.setSize(800,30)
  //.setHandleSize(800/24)
  //.setRange(0,24)
  //.setBroadcast(true)
  //.setDecimalPrecision(0)
  //.setColorForeground(color(255,40))
  //.setColorBackground(color(255,40));
  
  //submit = controlP5.addButton("submit")
  //.setValue(50)
  //.setPosition(500, 750)
  //.setSize(200,20);
  
  String[] time = {"12 midnight", "1 a.m.", "2 a.m.", "3 a.m.", "4 a.m.", "5 a.m.", "6 a.m.", "7 a.m.", "8 a.m.", "9 a.m.", "10 a.m.", "11 a.m.", 
                  "12 noon", "1 p.m.", "2 p.m.", "3 p.m.", "4 p.m.", "5 p.m.", "6 p.m.", "7 p.m.", "8 p.m.", "9 p.m.", "10 p.m.", "11 p.m."};
  
  slider = controlP5.addSlider("Time of Day")
  .setSize(200, 30)
  .setPosition(width/2-100, 700)
  .setRange(0, 24)
  .setDecimalPrecision(0)
  .setNumberOfTickMarks(25)
  .showTickMarks(false)
  //.setCaptionLabel("String") 
  .setStringValue("String")
  .setHandleSize(20);
  
}
/*
void controlEvent(ControlEvent theEvent) {
  if (theEvent.isFrom(submit)) {
    int hourMinValue = (int) hour.getArrayValue(0);
    int hourMaxValue = (int) hour.getArrayValue(1);
    
    loadData(
      ageMinValue,
      ageMaxValue,
      sexValue,
      bmiMinValue,
      bmiMaxValue,
      childrenMinValue,
      childrenMaxValue,
      smokerValue,
      regionValue,
      chargesMinValue,
      chargesMaxValue
    );
  }
}*/

void loadData() {
  Table survey = loadTable("data.csv", "header");
  
  int rowCounter = 0;
  
  for(int i=0; i< survey.getRowCount(); i++) {
    rowCounter += 1;
  }
    
  data = new Object[rowCounter][5];  
  
  int rowIndex = 0;  
  
  for(int i=0; i< survey.getRowCount(); i++) {
    TableRow row = survey.getRow(i);
    int act1 = row.getInt("ActivityTier1");
    int act2 = row.getInt("ActivityTier2");
    int act3 = row.getInt("ActivityTier3");
    int starthr = row.getInt("StartHr");
    int endhr = row.getInt("EndHr");
      
    data[rowIndex][0] = act1;
    data[rowIndex][1] = act2;
    data[rowIndex][2] = act3;
    data[rowIndex][3] = starthr;
    data[rowIndex][4] = endhr;
  
  rowIndex += 1;
  }  
}