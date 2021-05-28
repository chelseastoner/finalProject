
//RUNNER

import peasy.*;

Planet sun;
PeasyCam cam;

PImage SunIMG;
PImage JupiterIMG;
PImage SaturnIMG;
PImage UranusIMG;
PImage NeptuneIMG;
PImage EarthIMG;
PImage VenusIMG;
PImage MarsIMG;
PImage MercuryIMG;

void setup() {
  
  size(1300, 800, P3D);
  
  cam = new PeasyCam(this, 3600);
  
  JupiterIMG = loadImage("Jupiter.jpg");
  SunIMG = loadImage("Sun.jpeg");
  SaturnIMG = loadImage("Saturn.jpg");
  UranusIMG = loadImage("Uranus.jpg");
  NeptuneIMG = loadImage("Neptune.jpeg");
  EarthIMG = loadImage("Earth.jpeg");
  VenusIMG = loadImage("Venus.jpg");
  MarsIMG = loadImage("Mars.jpg");
  MercuryIMG = loadImage("Mercury.jpg");
  
  //sun
  //radius: 696,340 km
  //distance from the sun: 0 km
  sun = new Planet(696.340, 0, true, SunIMG);
  
   
  //Jupiter
  //radius: 71,492 km
  //distance from sun: 778,330,000 km
  sun.addPlanet(71.492, 696 + 778.33, true, JupiterIMG);
  
  
  //Saturn
  //radius: 60,268 km
  //distance from sun: 1,424,600,000 km
  sun.addPlanet(60.268, 696 + 1424.6, true, SaturnIMG);
  

  //Uranus
  //radius: 25,559 km
  //distance from sun: 2,873,550,000 km
  sun.addPlanet(25.559, 696 + 2873.55, false, UranusIMG);
  
  
  //Neptune
  //radius: 24,764 km
  //distance from sun: 4,501,000,000 km
  sun.addPlanet(24.764, 696 + 4501, true, NeptuneIMG);
  
  
  //Earth
  //radius: 6378.1 km
  //distance from sun: 149,600,000 km
  sun.addPlanet(6.3781, 696 + 150, true, EarthIMG);
  
  
  //Venus
  //radius: 6051.8 km
  //distance from sun: 108,200,000 km
  sun.addPlanet(6, 696 + 108, false, VenusIMG);
  
  
  //Mars
  //radius: 3,396.2
  //distance from sun: 227,940,000 km
  sun.addPlanet(3.3962, 696 + 227.94, true, MarsIMG);
  
  
  //Mercury
  //radius: 2,439.7 km
  //distance from sun: 57,910,000 km
  sun.addPlanet(2.4397, 696 + 57.91, true, MercuryIMG);
  
}

void draw() {
  background(0);
  ambientLight(255,255,255);
  pointLight(255, 255, 255, 0, 0, 0);
  sun.show();
  sun.orbit();
}
