public class Vector2D {
  public float x;
  public float y;
  
  public Vector2D(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public Vector2D(double x, double y){
    this.x = (float) x;
    this.y = (float) y;
  }
  
  public Vector2D(Vector2D vec){
    this.x = vec.x;
    this.y = vec.y;
  }
  
  public float distance(Vector2D to){
    return (float) Math.sqrt(squareDistance(to));
  }
  
  public float squareDistance(Vector2D to){
    return (float) (Math.pow(this.x - to.x, 2) + Math.pow(this.y - to.y, 2));
  }
  
  public Vector2D addScalar(float quantity){
    return new Vector2D(this.x + quantity, this.y + quantity);
  }
  
  public Vector2D addVector(Vector2D vector){
    return new Vector2D(this.x + vector.x, this.y + vector.y);
  }
  
  public Vector2D multiplyScalar(float quantity){
    return new Vector2D(this.x * quantity, this.y * quantity);
  }
  
  public void printOut(String label){
    System.out.println(label + " x: " + this.x + " y: " + this.y);
  }
  
  public float magnitude(){
    return (float) Math.sqrt(Math.pow(this.x, 2) + Math.pow(this.y, 2));
  }
  
  public Vector2D normalize(){
    float magnitude = this.magnitude();
    return new Vector2D(this.x/magnitude, this.y/magnitude);
  }
  
  public float dotProduct(Vector3D with){
    return this.x*with.x + this.y*with.y;
  }
}