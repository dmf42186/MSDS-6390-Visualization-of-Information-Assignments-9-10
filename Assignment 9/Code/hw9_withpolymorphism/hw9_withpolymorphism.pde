PFont Font1;

int[][] data;
Visualization vz;

void setup() {
  size(1200, 800);
  background(0);
  
  data = new int[0][5];
    
  loadData();
    
  Graph[] gr = new Graph[17];
  
  for(int i = 0; i < 17; i++) {
    if (i == 0) {
      gr[i] = new EatingDrinking();
    }
    else if (i == 1) {
      gr[i] = new Travel();
      }
    else if (i == 2) {
      gr[i] = new Education();
      }
    else if (i == 3) {
      gr[i] = new Sports();
      }
    else if (i == 4) {
      gr[i] = new Work();
      }
    else if (i == 5) {
      gr[i] = new Housework();
      }
    else if (i == 6) {
      gr[i] = new PersonalCare();
      }
    else if (i == 7) {
      gr[i] = new HouseholdCare();
      }
    else if (i == 8) {
      gr[i] = new NonHouseholdCare();
      }
    else if (i == 9) {
      gr[i] = new ProfessionalCare();
      }
    else if (i == 10) {
      gr[i] = new Shopping();
      }
    else if (i == 11) {
      gr[i] = new Leisure();
      }
    else if (i == 12) {
      gr[i] = new SpiritualActivity();
      }
    else if (i == 13) {
      gr[i] = new VolunteerService();
      }
    else if (i == 14) {
      gr[i] = new Miscellaneous();
      }
    else if (i == 15) {
      gr[i] = new PhoneCalls();
      }
    else if (i == 16) {
      gr[i] = new CivicService();
      }
  }
  
  vz = new Visualization(gr);
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
  Font1 = createFont("Calibri Bold", 32);
  fill(255, 0, 0);
  textFont(Font1);
  text("A Day in Life of Americans (based on 2016 American Time Use Survey)", 150, 50);
}