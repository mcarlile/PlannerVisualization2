import controlP5.*;

ControlP5 cp5;
int myColor = color(0, 0, 0);
int sliderTicks2 = 30;
int typeCastedValue;
Slider abc;
String month;
float date;
PImage photo;
float rdate;
String label = "January 1";
PImage ThirdAndOlive; 
PImage SeventhStreet; 
PImage NinthStreet;
PImage GreenAcresDrive;
PImage WoodcrestCircle;
PImage WoodlawnDrive;
PImage MartinCourt;
PImage PeppermillLakeCourt;
PImage MeadowsweetDrive;
PImage TomashaDrive;
PImage AdrianAvenue;
PImage AintreeRoad;
PImage BillAvenue;
PImage BurgherDrive;
PImage CedarGrove;
PImage CollegeHills;
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
PImage HillviewDrive;
PImage HutchisonDrive;
PImage KentLane;
PImage KingDrive;
PImage MaxwellStreet;
PImage MurryLane;
PImage OldEnglishRoad;
PImage OliveStreet;
PImage OrchardHillsDrive;
PImage RedbudLane;
PImage ScenicDrive;
PImage SouthTimbercreekAvenue;
PImage SteeplechaseRoad;
PImage TrumanAvenue;
PImage WhitneyLane;
PImage WinchesterDrive;
PImage RollaGardensDrive;
PImage HarvestFields;


void setup() {
  size(840, 400);
  noStroke();
  cp5 = new ControlP5(this);
  background (0);

  ScenicDrive = loadImage("Scenic Drive.png");
  SteeplechaseRoad = loadImage("Steeplechase Road.png");
  KentLane = loadImage("Kent Lane.png");
  MurryLane = loadImage("Murry Lane.png");
  DennyCourt = loadImage("Denny Court.png");
  MaxwellStreet = loadImage("Maxwell Street.png");
  CollegeHills = loadImage("College Hills Drive.png");
  AintreeRoad = loadImage("Aintree Road.png");
  AdrianAvenue = loadImage("Adrian Avenue.png");
  CoventryDrive = loadImage("Coventry Drive.png");
  OldEnglishRoad = loadImage("Old English Road.png");
  ElmwoodDrive = loadImage("Elmwood Drive.png");
  ThirdAndOlive = loadImage("3rd and Olive.png");
  OrchardHillsDrive = loadImage("Orchard Hills Drive.png");
  WhitneyLane = loadImage("Whitney Lane.png");
  RollaGardensDrive = loadImage("44 Rolla Gardens Drive.png");
  SouthTimbercreekAvenue = loadImage("South Timbercreek Avenue (Springfield).png");
  CurtisDrive = loadImage("Curtis Drive.png");
  MartinCourt = loadImage("1326 Martin Ct. Grapevine, TX 76051.png");
  FortWymanRoad = loadImage("Fort Wyman Road.png");
  WinchesterDrive = loadImage("Winchester Drive.png");
  NinthStreet = loadImage("9th Street.png");
  TomashaDrive = loadImage("14505 Tomasha Drive, Indepence, MO 64055.png");
  GreenlefeDrive = loadImage("Greenlefe Drive.png");
  OliveStreet = loadImage("Olive Street.png");
  CedarGrove = loadImage("Cedar Grove.png");
  BillAvenue = loadImage("Bill Avenue.png");
  GreenAcresDrive = loadImage("58 Green Acres Drive.png");
  Highway72 = loadImage("Highway 72.png");
  HillviewDrive = loadImage("Hillview Drive.png");
  SeventhStreet = loadImage("7th Street.png");
  TrumanAvenue = loadImage("Truman Avenue.png");
  WoodcrestCircle = loadImage("138 Woodcrest Circle.png");
  PeppermillLakeCourt = loadImage("2521 Pepermil Lake Ct. Chesterfield Mo 63017.png");
  BurgherDrive = loadImage("Burgher Drive.png");
  MeadowsweetDrive = loadImage("3912 Meadowsweet Dr. Dayton, Ohio.png");

  cp5.addSlider("sliderTicks2")
    .setPosition(width/4, 340)
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
    typeCastedValue = int((cp5.getController("sliderTicks2").getValue()));
  }

  if (month == "January") {
    if (int(date) == 5) {
      image (ScenicDrive, 0, -40, 840, 341);
    } else if (int(date) ==13) {
      image (KentLane, 0, -40, 840, 341);
      image (MurryLane, width/3, -40, 840, 341);
      image (DennyCourt, width/3*2, -40, 840, 341);
    } else if (int(date) ==14) {
      image (MurryLane, 0, -40, 840, 341);
      image (DennyCourt, width/3, -40, 840, 341);
      image (KentLane, width/3*2, -40, 840, 341);
    } else if (int(date) == 15) {
      image (MaxwellStreet, 0, -40, 840, 341);
      image (ScenicDrive, width/8, -40, 840, 341);
      image (CollegeHills, width/8*2, -40, 840, 341);
      image (AintreeRoad, width/8*3, -40, 840, 341);
      image (AdrianAvenue, width/8*4, -40, 840, 341);
      image (CoventryDrive, width/8*5, -40, 840, 341);
      image (OldEnglishRoad, width/8*6, -40, 840, 341);
      image (DennyCourt, width/8*7, -40, 840, 341);
    } else if (int(date) == 16) {
      image (ElmwoodDrive, 0, -40, 840, 341);
      image (RollaGardensDrive, width/8, -40, 840, 341);
      image (ThirdAndOlive, width/8*2, -40, 840, 341);
      image (MaxwellStreet, width/8*3, -40, 840, 341);
      image (CollegeHills, width/8*4, -40, 840, 341);
      image (DennyCourt, width/8*5, -40, 840, 341);
      image (WhitneyLane, width/8*6, -40, 840, 341);
      image (OrchardHillsDrive, width/8*7, -40, 840, 341);
    } else if (int(date) == 19) {
      image (SouthTimbercreekAvenue, 0, -40, 840, 341);
    } else if (int(date) == 20) {
      image (SteeplechaseRoad, 0, -40, 840, 341);
    } else if (int(date) == 26) {
      image (CurtisDrive, 0, -40, 840, 341);
    } else if (int(date) == 27) {
      image (MartinCourt, 0, -40, 840, 341);
    } else if (int(date) == 30) {
      image (FortWymanRoad, 0, -40, 840, 341);
    } else {
      background(0);
    }
  }

  if (month == "February") {
    if (int(date) == 5) {
      image (WhitneyLane, 0, -40, 840, 341);
      image (CurtisDrive, width/2, -40, 840, 341);
    } else if (int(date) == 8) {
      image (WinchesterDrive, 0, -40, 840, 341);
    } else if (int(date) == 9) {
      image (WinchesterDrive, 0, -40, 840, 341);
      image (NinthStreet, width/3, -40, 840, 341);
      image (CurtisDrive, width/3*2, -40, 840, 341);
    } else if (int(date) == 13) {
      image (CedarGrove, 0, -40, 840, 341);
    } else if (int(date) == 15) {
      image (TomashaDrive, 0, -40, 840, 341);
    } else if (int(date) == 17) {
      image (GreenlefeDrive, 0, -40, 840, 341);
    } else if (int(date) == 18) {
      image (OliveStreet, 0, -40, 840, 341);
    } else if (int(date) == 23) {
      image (NinthStreet, 0, -40, 840, 341);
    } else {
      background(0);
    }
  }

  if (month == "March") {
    if (int(date) == 9) {
      image (BillAvenue, 0, -40, 840, 341);
    } else if (int(date) == 10) {
      image (GreenAcresDrive, 0, -40, 840, 341);
      image (HillviewDrive, width/5, -40, 840, 341);
      image (Highway72, width/5*2, -40, 840, 341);
      image (CollegeHills, width/5*3, -40, 840, 341);
      image (BillAvenue, width/5*4, -40, 840, 341);
    } else if (int(date) == 11) {
      image (ThirdAndOlive, 0, -40, 840, 341);
    } else if (int(date) == 13) {
      image (BillAvenue, 0, -40, 840, 341);
    } else if (int(date) == 14) {
      image (WhitneyLane, 0, -40, 840, 341);
      image (SeventhStreet, width/2, -40, 840, 341);
    } else if (int(date) == 15) {
      image (TrumanAvenue, 0, -40, 840, 341);
    } else if (int(date) == 16) {
      image (WoodcrestCircle, 0, -40, 840, 341);
    } else if (int(date) == 21) {
      image (PeppermillLakeCourt, 0, -40, 840, 341);
      image (AintreeRoad, width/2, -40, 840, 341);
    } else if (int(date) == 22) {
      image (CoventryDrive, 0, -40, 840, 341);
      image (SteeplechaseRoad, width/2, -40, 840, 341);
    } else if (int(date) == 28) {
      image (BurgherDrive, 0, -40, 840, 341);
      image (WhitneyLane, width/2, -40, 840, 341);
    } else if (int(date) == 31) {
      image (MeadowsweetDrive, 0, -40, 840, 341);
    } else {
      background(0);
    }
  }

  println(cp5.getController("sliderTicks2").getValue());
}


void keyPressed () {
  if (keyCode == RIGHT) {
    cp5.getController("sliderTicks2").setValue(int(cp5.getController("sliderTicks2").getValue()+1));
  }

  if (keyCode == LEFT) {
    cp5.getController("sliderTicks2").setValue(cp5.getController("sliderTicks2").getValue()-1);
  }
}

