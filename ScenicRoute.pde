public final int fieldX = 800;
public final int fieldY = 600;
public final int fieldZ = 700;
Line line;
ArrayList trees;
int screenX = 1200;
int screenY = 800;
int numMountains = 4;
Mountains[] background;

public void setup(){
  size(1200, 800, P2D);
  frameRate(30);
  //trees = new ArrayList();
  //trees.add(new Deciduous(new Vector3D(screenX + 200, .6*screenY, 0), 3, 3, 3));
  background = new Mountains[numMountains];
  background[0] = new Mountains(200);
  background[1] = new Mountains(300);
  background[2] = new Mountains(500);
  background[3] = new Mountains(750);
}

public void draw(){
  //ArrayList offscreenTrees = new ArrayList();
  //for(int i = 0; i < trees.size(); i++){
    //Deciduous d = (Deciduous) trees.get(i);
    //d.drawRoot("solid");
    //if(d.roots[0].path.start.x < -400){
    //  offscreenTrees.add(d);
    //}
  background(255);
  for(int j=0; j<numMountains; j++){
    background[j].drawHorizon();
    background[j].progressForward();
  }
  //}
  //for(int i = 0; i < offscreenTrees.size(); i++){
  //  Deciduous d = (Deciduous) offscreenTrees.get(i);
  //  trees.remove(d);
  //}
  //if(trees.size() < 8){
  //  float spawnTree = random(0, 50);
  //  if (spawnTree > 49){
  //    float distance = random(-50, 50);
  //    trees.add(new Deciduous(new Vector3D(screenX + 400, .6*screenY+distance, distance*10), 3, 3, 3));
  //  }
  //}
}