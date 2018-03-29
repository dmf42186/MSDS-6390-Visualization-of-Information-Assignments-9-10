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
  size(1200, 800);
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
  
  //loadData(0, 100, 0, 100, 0, 100, 0, 24, 0, 24);
  loadData();
  controls();
  
  et.drawBubble(125, (height-100)/2);
  tr.drawBubble(width/2, (height-100)/2);
  ed.drawBubble(width/2, 125);
  sp.drawBubble(width-125, (height-100)/2);
  wk.drawBubble(125+(width/2-125)*1/4, (height-100)/2+56.25);
  hw.drawBubble(width/2+(width/2-125)*2/4, (height-100)/2-112.5);
  pc.drawBubble(width/2, (height-100)-125);
  hc.drawBubble(125+(width/2-125)*1/4, (height-100)/2-56.25);
  nhc.drawBubble(125+(width/2-125)*2/4, (height-100)/2-112.5);
  pfc.drawBubble(125+(width/2-125)*3/4, (height-100)/2-168.75);
  sh.drawBubble(width/2+(width/2-125)*1/4, (height-100)/2-168.75);
  ls.drawBubble(width/2+(width/2-125)*3/4, (height-100)/2-56.25);
  sa.drawBubble(width/2+(width/2-125)*3/4, (height-100)/2+56.25);
  vs.drawBubble(width/2+(width/2-125)*2/4, (height-100)/2+112.5);
  ms.drawBubble(width/2+(width/2-125)*1/4, (height-100)/2+168.75);
  ph.drawBubble(125+(width/2-125)*3/4, (height-100)/2+168.75);
  cs.drawBubble(125+(width/2-125)*2/4, (height-100)/2+112.5);
}

void draw() {
  Font1 = createFont("Calibri Bold", 24);
  fill(255);
  textFont(Font1);
  text("A Day in Life of Americans (based on ATUS Data 2016)", 325, 50);
}