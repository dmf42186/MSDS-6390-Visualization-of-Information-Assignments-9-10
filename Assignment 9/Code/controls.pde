import controlP5.*;
ControlP5 controlP5;

Button submit;
Range hour;

void controls() {
  controlP5 = new ControlP5(this);
  
  //int startY = 50;
  
  hour = controlP5.addRange("hour")
  .setBroadcast(false) 
  .setPosition(200, 700)
  .setSize(800,30)
  .setHandleSize(20)
  .setRange(0,24)
  .setBroadcast(true)
  .setDecimalPrecision(0)
  .setColorForeground(color(255,40))
  .setColorBackground(color(255,40));
  
  submit = controlP5.addButton("submit")
  .setValue(0)
  .setPosition(500, 750)
  .setSize(200,20);
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
    /*TableRow row = survey.getRow(i);
    int act1 = row.getInt("ActivityTier1");
    int act2 = row.getInt("ActivityTier2");
    int act3 = row.getInt("ActivityTier3");
    int starthr = row.getInt("StartHr");
    int endhr = row.getInt("EndHr");*/
    
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
  
  
  /*
  for(int i=0; i<5; i++) {
    for(int j=0; j<5; j++) {
      println(data[i][j]);
    }
  }
  */
}