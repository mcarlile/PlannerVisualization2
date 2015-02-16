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

void setup() {
  size(1200, 400);
  noStroke();
  cp5 = new ControlP5(this);




  cp5.addSlider("sliderTicks2")
    .setPosition(width/4, 370)
      .setWidth(width/2)
        .setRange(0, 90) // values can range from big to small as well
          .setValue(0)
            .setNumberOfTickMarks(90)
              .setSliderMode(Slider.FLEXIBLE)
                ;
  // use Slider.FIX or Slider.FLEXIBLE to change the slider handle
  // by default it is Slider.FIX
}

void draw() {
  fill(sliderTicks2);
  rect(0, 350, width, 50);
  if (cp5.getController("sliderTicks2").getValue() <= 31) {
    month = "January";
    date = cp5.getController("sliderTicks2").getValue() + 1;
    rdate = Math.round(date - 0.50f);
  } 

  if ((cp5.getController("sliderTicks2").getValue() > 31) && (cp5.getController("sliderTicks2").getValue() <= 60)) {
    month = "February";
    date = cp5.getController("sliderTicks2").getValue()-30;
    rdate = Math.round(date - 0.5f);
  }


  if (cp5.getController("sliderTicks2").getValue() > 60) {
    month = "March";
    date = cp5.getController("sliderTicks2").getValue()-59;
    rdate = Math.round(date - 0.5f);
  }
  println(month + " " + int(rdate));
}


void slider(float theColor) {
  myColor = color(theColor);
  println("a slider event. setting background to "+theColor);
}

