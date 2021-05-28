
//PLANET CLASS

class Planet {
  
  float radius;
  float angle;
  float distance;
  float mass;
  double orbitSpeed;
  PVector v;
  ArrayList<Planet> planets;
  PShape globe;
  
  Planet(float r, float d, boolean cc, PImage img) {
    
    //uncomment to create a random vector with magnitude of 1 to place the planet
    //v = PVector.random3D();
    
    //orients the planet in relation to (0, 0, 0)/where the sun is centered
    if(cc)
      v = new PVector(0, 0, 1);
    else
      v = new PVector(0, 0, -1);
    
    //scales the vector to the correct magnitude
    distance = d;
    v.mult(distance);
    
    //sets up polar coordinate system
    angle = random(TWO_PI);
    radius = r;
    
    //calculates the planet's period
    orbitSpeed = 1 / (2 * PI * Math.sqrt((Math.pow(1000 * radius, 3) / (1.32712440018 * Math.pow(10, 11))))) / 20;
    
    //array of planets that orbit this planet, added to with the addPlanet method
    planets = new ArrayList<Planet>();
    
    //creates graphics
    noStroke();
    noFill();
    globe = createShape(SPHERE, radius);
    globe.setTexture(img);
    
  }
  
  void orbit() {
    angle += orbitSpeed;
    if (planets != null) {
      for (int i = 0; i < planets.size(); i++) {
        planets.get(i).orbit();
      }
    }
  }
  
  void addPlanet(float r, float d, boolean cc, PImage img) {
    planets.add(new Planet(r, d, cc, img));
  }
  
  void show() {
    pushMatrix();
    //noStroke();
    fill(255);
    
    //TAKING THE CROSS PRODUCT HERE!!!!
    PVector v2 = new PVector(1, 0, 1);
    PVector p = v.cross(v2);
    
    rotate(angle, p.x, p.y, p.z);
    translate(v.x, v.y, v.z);
    shape(globe);
    
    for (int i = 0; i < planets.size(); i++) {
      planets.get(i).show();
    }
    popMatrix();
  }
  
}
