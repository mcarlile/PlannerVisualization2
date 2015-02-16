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
PImage 3rdAndOlive; 
PImage 7thStreet; 
PImage 9thStreet;
PImage 44RollaGardensDrive;
PImage 58GreenAcresDrive;
PImage 138WoodcrestCircle;
PImage 1321WoodlawnDrive;
PImage 1326MartinCourt;
PImage 2521PeppermillLakeCourt;
PImage 3912MeadowsweetDrive;
PImage 14505TomashaDrive;
PImage AdrianAvenue;
PImage AintreeRoad;
PImage BillAvenue;
PImage BurgherDrive;
PImage CedarGrove;
PImage CollegeHillsDrive;
PImage CoventryDrive;
PImage CurtisDrive;
PImage DennyCourt;
PImage ElkPrairieRoad;
PImage ElmwoodDrive;
PImage FortWymanRoad;
PImage GreenlefeDrive;
PImage HawthorneRoad;
PImage HeritagePark;
PImage Highway72;
PImage HighwayY;
PImage Hillview Drive;
PImage HutchisonDrive;
PImage KentLane;
PImage KingDrive;
PImage MaxwellStreet;
PImage MurryLane;
PImage OldEnglishRoad;
PImage OliveSTreet;
PImage OrchardHillsDrive;
PImage RedbudLane;
PImage ScenicDrive;
PImage SouthTimbercreekAvenue;
PImage SteeplechaseRoad;
PImage TrumanAvenue;
PImage WhitneyLane;
PImage WinchesterDrive;

void setup() {
  size(1200, 400);
  noStroke();
  cp5 = new ControlP5(this);
  background (0);




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
  
  if (label == "Febrary 2") {
    
  }
}


void keyReleased () {
  if (keyCode == RIGHT) {
    cp5.getController("sliderTicks2").setValue(cp5.getController("sliderTicks2").getValue()+1);
  }

  if (keyCode == LEFT) {
    cp5.getController("sliderTicks2").setValue(cp5.getController("sliderTicks2").getValue()-1);
  }
}

