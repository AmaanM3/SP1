//SP1 - Group Second tab

// Arrays med holdene i hver gruppe
String[] groupTeamA = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"};                                          // Teams i gruppe A
String[] groupTeamB = {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"};                                                // Teams i gruppe B
String[] groupTeamC = {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"};                                              // Teams i gruppe C
String[] groupTeamD = {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};                                          // Teams i gruppe D


// Klasse til at tegne grupperne
class Group {                                                                                                  // Opretter en class, kaldet Group

  //Strings af gruppen og teams i gruppen
  String groupName;                                                                                            // Gruppens navn
  String[] teams;                                                                                              // Array med teams i selve gruppen

  //Erklærer variabler med mine datatyper
  float posX, posY;                                                                                            // Startpositionerne af x og y for gruppen
  float boxW, boxH, space;                                                                                     // boksens højde, bredde, og spacing mellem hver boks
  color sideColor;                                                                                             // farven på højre side af boken
  PFont normalFont;                                                                                            // Font tskalypen til texten på holdnanvne
  PImage[] flags;                                                                                              // Dette tilføjer et array af lande billederne som er til hvert hold
  TextGroup TextOfGroup;

  // Dette er constructoren, initialiserer gruppens navn, team, x og y position, størrelsen samt farven
  Group(String groupName, String[] teams, float posX, float posY, float boxW, float boxH, float space, color sideColor) {

    this.groupName = groupName;                                                                                // Dette gemmer gruppens navn
    this.teams = teams;                                                                                        // Dette gemmer arrayet med teams
    this.posX = posX;                                                                                          // Dette er x position
    this.posY = posY;                                                                                          // Dette er y position
    this.boxW = boxW;                                                                                          // Dette er boksens bredde
    this.boxH = boxH;                                                                                          // Dette er boksens højde
    this.space = space;                                                                                        // Hvor meget spacing der er mellem hver boks
    this.sideColor = sideColor;                                                                                // Dette er farven på højre side af boksen
    PFont groupFont = createFont("Arial-BoldMT", 15);                                                          // Ændre font til gruppe titlen til en mindre skrift
    PFont teamFont = createFont("Arial-boldMT", 23);                                                           // Ændre font til teams navnene til en større skrift
    TextOfGroup = new TextGroup(groupFont, teamFont, colorBackground);                                         // Initialiserer TextGroup objektet som tegner


    // Indlæser flagene i min flag-data mappe
    flags = new PImage[teams.length];                                                                          // Opretter et array af billeder
    for (int i = 0; i < teams.length; i++) {                                                                   // Loop igennem alle teams i gruppen

      String fixedName = teams[i].toLowerCase();                                                               // gør alt til lowercase
      fixedName = fixedName.replace(" ", "");                                                                  // Fjerner mellemrum
      fixedName = fixedName.substring(0, 1).toUpperCase() + fixedName.substring(1);                            // lav første bogstav stort igen

      String fileName = "SP1-Flag/" + fixedName + ".png";                                                      // Dette er filstien
      flags[i] = loadImage(fileName);                                                                           // Loader billederne ind

      //println(fileName); // debug: viser hvilke filer den loader, så man kan se hvis der fejl
    }
  }


  // En ny metode til at tegne selve gruppen, flagene, boks, navn osv.
  void display() {
    TextOfGroup.groupName(groupName, posX, posY, boxW, sideColor);                                             // Tegner gruppens overskrift, sætter den ind i display(), for at gøre det nememre


    for (int i = 0; i < teams.length; i++) {                                                                   // Loop igennem alle hold i gruppen, som i titleName()
      float boxY = posY + i * (boxH + space);                                                                  // Giver dette en float variabel, så min kode ser "pænere" ud

      // Tegner boksen
      strokeWeight(0);                                                                                         // Ingen kantlinjer i selve boksen
      fill(boxBackground);                                                                                     // Tilføjer en hvid farve til boksen
      rect(posX, boxY, boxW, boxH);                                                                            // Tegner boksen for hvert team

      // Indlæser flagene
      image(flags[i], posX, boxY, 50, boxH);                                                                   // Tegner flagene i boksen

      // Skriver teksen og tegner holdnavnene
      TextOfGroup.teamName(teams[i], posX + 60, boxY + boxH/2);                                                // Indlæser TextGroup til at tegne holdets nanvne

      // Farver siderne ved hver hvid boks
      fill(sideColor);  //#Blå
      rect(width / 2-10, boxY, 6, boxH);                                                                       // Tegner en rect helt ude til boksens højre

      fill(sideColor);  //#Gul
      rect(width-10, boxY, 6, boxH);                                                                           // Tegner en rect helt ude til boksens højre
    }
  }
}
