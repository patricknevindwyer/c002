/*
  clock 002
  2011/10/05T11:30:00
  patrick dwyer
  
  See http://patricknevindwyer.github.com/clocks for more info.
  
*/
PFont clockFont;


void setup() {
 
   size(300, 700); 
   clockFont = loadFont("Helvetica-24.vlw");
}

void draw() {
  
  background(0);

  textFont(clockFont, 24);

  drawTime(second(), 60, 30, 0);
  drawTime(minute(), 60, 30, -40);
  drawTime(hour(), 24, 12, -80);
}

void drawTime(int timeCurrent, int timeScale, int clockOffset, int ringOffset) {

  pushMatrix();
  translate(-height / 4, height / 2);
  rotate((PI * 2 / timeScale) * timeCurrent + (PI * 2 / timeScale * clockOffset));
  
  for (int i = 0; i < timeScale; i++) {
     pushMatrix();
     translate(-height / 2, 0);
     rotate(PI);
     text("" + nf(i, 2), ringOffset, 0); 
     popMatrix();
     
     
     rotate((PI * 2.0) / -timeScale);
        
  }
  
  popMatrix();

}
