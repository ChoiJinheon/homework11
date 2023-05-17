angrybird bird1, bird2;
boolean left, right, up, down;
float speed;

void setup(){
  size(1000, 600);
  bird1 = new angrybird(500, 500, 10, 10);
  bird2 = new angrybird(250, 250, 5, 5);
}
void draw(){
  background(128); 

  bird1.show();
  bird1.moveauto();
  bird2.show();
  bird2.moveauto();
}

class angrybird {
  // constructor
  angrybird(float x, float y, float speedX, float speedY){
    // a = x location, b = y location, 
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
  }
  
  // member data
  float x, y, z = 100, speedX, speedY;
  
  // member function
  void show() {
      fill(255,0,0);
      strokeWeight(2);
      ellipse(x-z/7.5,y-z/2+z/75,z/3,z/7.5);
      ellipse(x-z/30,y-z/2+z/75,z/7.5,z/3);
      fill(0,0,0);
      quad(x-z/2-z/7.5,y-z/15, x-z/2-z/7.5,y+z/30, x-z/2+z/50, y+z/50, x-z/2+z/30, y-z/18.75);
      quad(x-z/1.875,y-z/6.52, x-z/2.14,y-z/18.75, x-z/2,y-z/50, x-z/1.76, y-z/8.33);
      quad(x-z/1.76,y+z/11.5, x-z/2,y-z/50, x-z/2.14,y+z/50, x-z/1.875, y+z/8.33);
      fill(255,0,0);
      circle(x,y,z);
      strokeWeight(1);
      fill(255,255,255);
      circle(x+z/15,y,z/4);
      circle(x+z/3.2,y,z/4);
      fill(0);
      circle(x+z/10,y,z/10);
      circle(x+z/3.4,y,z/10);
      fill(255,255,0);
      triangle(x+z/30,y+z/5,x+z/2.7,y+z/4.6,x+z/5.35,y+z/18.75);
      triangle(x+z/30,y+z/5,x+z/3.33,y+z/4.68,x+z/5.35,y+z/3.33);
      fill(0,0,0);
      quad(x-z/25,y-z/4, x+z/4.7,y-z/10, x+z/5.55,y-z/30, x-z/11.5,y-z/6);
      quad(x+z/6,y-z/10, x+z/2.2,y-z/4.05, x+z/2,y-z/6, x+z/5,y-z/30);
  }
  void move(String direction) {
  if (direction.equals("up")) {
    y -= 5;
  } else if (direction.equals("down")) {
    y += 5;
  } else if (direction.equals("left")) {
    x -= 5;
  } else if (direction.equals("right")) {
    x += 5;
  }
  }
  void moveauto(){
    x += speedX;
    y += speedY;
    if (x > width || x < 0) speedX = -speedX;
    if (y > height || y < 0) speedY = -speedY;
  }   
}
