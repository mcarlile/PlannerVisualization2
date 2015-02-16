import controlP5.*;

ControlP5 cp5;
int myColor = color(0, 0, 0);

int sliderValue = 100;
int sliderTicks1 = 100;
int sliderTicks2 = 30;
Slider abc;
String month;
float date;
float rdate;
String label = "January 1";

void setup() {
  size(1200, 400);
  noStroke();
  cp5 = new ControlP5(this);




  cp5.addSlider("sliderTicks2")
    .setPosition(width/4, 370)
      .setWidth(width/2)
        .setRange(1, 91) // values can range from big to small as well
          .setValue(0)
            .setNumberOfTickMarks(90)
              .setSliderMode(Slider.FLEXIBLE)
                ;
  // use Slider.FIX or Slider.FLEXIBLE to change the slider handle
  // by default it is Slider.FIX
}

void draw() {
  cp5.getController("sliderTicks2").setValueLabel(label);

  fill(sliderTicks2);
  rect(0, 350, width, 50);
  if (cp5.getController("sliderTicks2").getValue() <= 32) {
    month = "January";
    date = cp5.getController("sliderTicks2").getValue();
    rdate = Math.round(date - 0.50f);
    label = month + " " + int(rdate);
  } 

  if ((cp5.getController("sliderTicks2").getValue() > 32) && (cp5.getController("sliderTicks2").getValue() <= 60)) {
    month = "February";
    date = cp5.getController("sliderTicks2").getValue()-31;
    rdate = Math.round(date - 0.5f);
    label = month + " " + int(rdate);
  }


  if (cp5.getController("sliderTicks2").getValue() > 60) {
    month = "March";
    date = cp5.getController("sliderTicks2").getValue()-59;
    rdate = Math.round(date - 0.5f);
    label = month + " " + int(rdate);
  }
  println(month + " " + int(rdate));
}


void slider(float theColor) {
  myColor = color(theColor);
  println("a slider event. setting background to "+theColor);
  label = month + "" + int(rdate);

  cp5.getController("sliderTicks2").setValueLabel(label);
}

void keyPressed () {
  if (keyCode == RIGHT) {
    cp5.getController("sliderTicks2").setValue(cp5.getController("sliderTicks2").getValue()+1);
  }

  if (keyCode == LEFT) {
    cp5.getController("sliderTicks2").setValue(cp5.getController("sliderTicks2").getValue()-1);
  }
}

