// Requires Particle, ArrowParticle classes

int num = 320;
ArrowParticle[] p = new ArrowParticle[num];
float radius = 1.2;

void setup() {
  size(700, 100);
  for (int i = 0; i < p.length; i++) {
    float velX = random(1, 8);
    float velY = random(-5, -1);
    // Parameters: x, y, x-velocity, y-velocity, radius
    p[i] = new ArrowParticle(0, height/2, velX, velY, 1.2);
  }
}

void draw() {
  background(0);
  for (ArrowParticle part : p) {
    part.update();
    part.display(); 
  }
}
