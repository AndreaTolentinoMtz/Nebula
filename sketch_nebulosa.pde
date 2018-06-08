import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

PFont font;
int pantalla = 0;
ArrayList<Particle> particles;
ArrayList<Particle2> particles2;
//ArrayList<Supernova> supernovas;

void setup(){
  size(900,600);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -.5);
  
  particles = new ArrayList<Particle>();
  particles2 = new ArrayList<Particle2>();
  //supernovas = new ArrayList<Supernova>();
}

void mouseMoved(){
  for (Particle b: particles) {
     b.attract(mouseX,mouseY);
    }
    for (Particle2 b: particles2) {
     b.attract(mouseX,mouseY);
    }
}

void draw(){
  switch (pantalla){
    case 0:
    titulo();
    break;

    case 1:
    explicacion();
    break;
    
    case 2:
    nebulosa();
    break;
   
  }
  
  
    /*for (Supernova t: supernovas){
    t.display();
  }*/
  
}
