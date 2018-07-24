public class Mountains {
  Vector2D[] horizon;
  float acceleration;
  float velocity;
  int depth;
  int granularity;
  Vector3D fillColor;
  
  public Mountains(int depth){
    this.depth = depth;
    this.granularity = 20000/int(pow((depth/10), 1.5));
    this.horizon = new Vector2D[this.granularity+1];
    this.velocity = 0;
    this.acceleration = 0;
    determineFillColor();
    setHorizon();
  }
  
  public void setHorizon(){
    float x = 0;
    float y = this.depth;
    for(int i=0; i<this.granularity; i++){
      horizon[i] = new Vector2D(x, y);
      x += (1200.0/this.granularity);
      float changed = y + this.velocity;
      if(changed > this.depth+this.granularity || changed < this.depth-this.granularity){
        this.velocity=0;
      }
      else{
        y = changed;
      }
      this.acceleration = random(-5, 5);
      this.velocity = new Vector3D(-7, this.velocity+this.acceleration, 7).centermost();
    }
    horizon[this.granularity] = new Vector2D(1200, y);
  }
  
  public void drawHorizon(){
    beginShape();
    vertex(0, 800);
    for(int i=0; i<(this.granularity+1); i++){
      fill(this.fillColor.x, this.fillColor.y, this.fillColor.z);
      noStroke();
      Vector2D point = horizon[i];
      vertex(point.x, point.y);
    }
    vertex(1200, 800);
    endShape(CLOSE);
  }
  
  public void progressForward(){
    for(int i=0; i<this.granularity; i++){
      horizon[i] = new Vector2D(horizon[i].x, horizon[i+1].y);
    }
    this.acceleration = random(-5, 5);
    this.velocity = new Vector3D(-7, this.velocity+this.acceleration, 7).centermost();
    float changed = horizon[this.granularity].y + this.velocity;
    if(changed > this.depth+this.granularity || changed < this.depth-this.granularity){
      this.velocity=0;
    }
    else{
      horizon[this.granularity].y = changed;
    }
    horizon[this.granularity].x = 1200; 
  }
  
  public void determineFillColor(){
    float coeff = this.depth*.2;
    this.fillColor = new Vector3D(220 - coeff, 220 - coeff, 255 - coeff);
  }

}