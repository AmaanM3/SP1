//SP1 Main tab

//Hvide gruppe bokse
float boxWidthLeft = (width*3.3)+10;                                                                        // Dette er de bredde af de hvide bokse på venstre side
float boxWidthRight = (width*3.3);                                                                          // Dette er de bredde af de hvide bokse på højre side
float boxHeight = 27;                                                                                       // Dette er højden af hver boks begge sider
float spacing = 4;                                                                                          // Dette er afstanden mellem hver boks

float boxXLeft = 0   ;                                                                                      // Dette er hvor x starter ved boks venstre
float boxXRight = (width * 3) + 60;                                                                         // Dette er hvor x starter ved boks højre. Lidt højre for midter stregen
float boxYLeft = height / 5  ;                                                                              // Dette er hvor y starter ved boks venstre
float boxYRight = height * 1.7  ;                                                                           // Dette er hvor y starter ved boks venstre

// Mine forskellige farver
color boxBackground = (255);
color colorBackground = #211F43;                                                                           // Baggrunden som har en special blå
color blåFarve = #3CC0E3;                                                                                   // Dette er den blå farve til de små rect ved de hvide bokse
color gulFarve = #EFF030;                                                                                   // Dette er den gule farve til de små rect ved de hvide bokse


Group groupA, groupB, groupC, groupD;                                                                       // Opretttelse af mine variabler


void setup() {
  size(700, 300);                                                                                           // Størrelsen på vinduet


  //Initialisering af mine 4 grupper
  groupA = new Group("GROUP A", groupTeamA, boxXLeft, boxYLeft, boxWidthLeft, boxHeight, spacing, blåFarve);          //Hver gruppe har: et navn, hold arrayet, x, y, bredde, højde, spacing, farve (venstre hold øverst)
  groupB = new Group("GROUP B", groupTeamB, boxXLeft, boxYRight, boxWidthLeft, boxHeight, spacing, gulFarve);         // Dette er venstre hold nederst
  groupC = new Group("GROUP C", groupTeamC, boxXRight, boxYLeft, boxWidthRight, boxHeight, spacing, blåFarve);        // Dette er højre hold øverst
  groupD = new Group("GROUP D", groupTeamD, boxXRight, boxYRight, boxWidthRight, boxHeight, spacing, gulFarve);       // Dette er højre hold nederst


  // testFlag = loadImage("SP1-Flag/Russia.png");
  //println(PFont.list()); // Viser alle fonts jeg kan bruge, nyttet da jeg skulle lave titlerne samt landnavnene
}

void draw() {
  background(colorBackground);                                                                              // Tegner baggrnden med den speciele farve

  groupA.display();                                                                                         // Tegn gruppe A
  groupB.display();                                                                                         // Tegn gruppe B
  groupC.display();                                                                                         // Tegn gruppe C
  groupD.display();                                                                                         // Tegn gruppe D
  midLine();                                                                                                // Tegn midterlinjen
}

void midLine() {                                                                                            // Linjen i midten med de specifikke punkter
  fill(boxBackground);
  rect(width / 2, 0, 3.5, height);                                                                          // Tegner linjen
}
