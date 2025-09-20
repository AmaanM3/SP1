//SP1 - TextGroup Yhird tab
class TextGroup {

  PFont groupFont;                                                                // Font til gruppens navn
  PFont teamFont;                                                                 // Font til holdets navn
  color textColor;                                                                // Specifikke farve som bruges til teksten

  // Constructor som initialiserer både fonten og farven
  TextGroup(PFont groupFont, PFont teamFont, color textColor) {
    this.groupFont = groupFont;                                                  // Dette gemmer fonton til gruppens navn
    this.teamFont = teamFont;                                                    // Dette gemmer fonton til holdet navn
    this.textColor = textColor;                                                  // Dette gemmer farve til gruppens tekst
  }

  // Dette er en metode til at tegne gruppens overskrift
  void groupName(String groupName, float x, float y, float w, color sideColor) {
    textFont(groupFont);                                                        // Bruger fonton til gruppen
    textAlign(CENTER, CENTER);                                                  // Gør så den bliver center
    fill(sideColor);                                                            // Bruger side farverne
    text(groupName, x + w/2, y-10);                                             // Tegner gruppenavnet over boksen
  }

  // Dette er en metode til at tegne teams navne
  void teamName(String teamName, float x, float y) {
    textFont(teamFont);                                                         // Bruger fonten til team
    textAlign(LEFT, CENTER);                                                    // Gør så den bliver center og teksten til venstre
    fill(textColor);                                                            // Bruger side farverne
    text(teamName, x, y);                                                           // Tegner holdets navn i boksen
  }
}
//amaan
