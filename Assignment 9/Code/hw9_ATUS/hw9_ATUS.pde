PFont Font1;

int[][] data;
EatingDrinking et;
Travel tr;
Education ed;
Sports sp;
Work wk;
Housework hw;
PersonalCare pc;
HouseholdCare hc;
NonHouseholdCare nhc;
ProfessionalCare pfc;
Shopping sh;
Leisure ls;
SpiritualActivity sa;
VolunteerService vs;
Miscellaneous ms;
PhoneCalls ph;
CivicService cs;

void setup() {
  size(1200, 1000);
  background(0);
  
  data = new int[0][5];
  et = new EatingDrinking();
  tr = new Travel();
  ed = new Education();
  sp = new Sports();
  wk = new Work();
  hw = new Housework();
  pc = new PersonalCare();
  hc = new HouseholdCare();
  nhc = new NonHouseholdCare();
  pfc = new ProfessionalCare();
  sh = new Shopping();
  ls = new Leisure();
  sa = new SpiritualActivity();
  vs = new VolunteerService();
  ms = new Miscellaneous();
  ph = new PhoneCalls();
  cs = new CivicService();
  
  slider();
  loadData();
}
  
void loadData() {
  Table survey = loadTable("data.csv", "header");
  
  int rowCounter = 0;  
  for(int i=0; i< survey.getRowCount(); i++) {
    rowCounter += 1;
  }
  
  data = new int[rowCounter][5];  
  
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

void draw() {
  clear();
  Font1 = createFont("Calibri Bold", 32);
  fill(255, 0, 0);
  textFont(Font1);
  text("A Day in Life of Americans (based on 2016 American Time Use Survey)", 150, 50);
  
  et.drawBubble(125, (height-100)/2, slider.getValue());
  tr.drawBubble(width/2, (height-100)/2, slider.getValue());
  ed.drawBubble(width/2, 125, slider.getValue());
  sp.drawBubble(width-125, (height-100)/2, slider.getValue());
  wk.drawBubble(125+(width/2-125)*1/4, (height-100)/2+56.25, slider.getValue());
  hw.drawBubble(width/2+(width/2-125)*2/4, (height-100)/2-112.5, slider.getValue());
  pc.drawBubble(width/2, (height-100)-125, slider.getValue());
  hc.drawBubble(125+(width/2-125)*1/4, (height-100)/2-56.25, slider.getValue());
  nhc.drawBubble(125+(width/2-125)*2/4, (height-100)/2-112.5, slider.getValue());
  pfc.drawBubble(125+(width/2-125)*3/4, (height-100)/2-168.75, slider.getValue());
  sh.drawBubble(width/2+(width/2-125)*1/4, (height-100)/2-168.75, slider.getValue());
  ls.drawBubble(width/2+(width/2-125)*2/4, (height-100)/2+112.5, slider.getValue());
  sa.drawBubble(width/2+(width/2-125)*3/4, (height-100)/2+56.25, slider.getValue());
  vs.drawBubble(width/2+(width/2-125)*3/4, (height-100)/2-56.25, slider.getValue());
  ms.drawBubble(width/2+(width/2-125)*1/4, (height-100)/2+168.75, slider.getValue());
  ph.drawBubble(125+(width/2-125)*3/4, (height-100)/2+168.75, slider.getValue());
  cs.drawBubble(125+(width/2-125)*2/4, (height-100)/2+112.5, slider.getValue());
}