int screenX = 1200;
int screenY = 800;
int numMountains = 4;
Mountains[] background;

public void setup(){
  size(1200, 800, P2D);
  frameRate(30);
  background = new Mountains[numMountains];
  background[0] = new Mountains(200);
  background[1] = new Mountains(300);
  background[2] = new Mountains(500);
  background[3] = new Mountains(750);
}

public void draw(){
  background(255);
  for(int j=0; j<numMountains; j++){
    background[j].drawHorizon();
    //background[j].drawGradient();
    background[j].progressForward();
  }
}