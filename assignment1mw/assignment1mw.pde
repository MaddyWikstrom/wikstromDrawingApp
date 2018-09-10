
float mouseDist;
int squareY;
int squareX;
int counter;

 
void setup(){
  size(1300, 800);
  int squareWidth = 40;
  int squareHeight = 40;
  background(#D6C0DB, 0);
  for(int i = 0; i < height; i++){
    line(0, 600, width, i);
  }
}

void draw(){
  rectMode(CENTER);
   for(int i = 0; i < height; i+=5){
     rotate(radians(counter*.9));
    fill(#B4128F);
    rect(400, 400, mouseDist, mouseDist);
    
  }
  mouseDist = dist(mouseX, mouseY, pmouseX, pmouseY);
  pushMatrix();
  rect(0,0,40,40);
  translate(mouseX, mouseY);
  counter++;
  fill(#2D1D31, 0);
  popMatrix();
  /*
  if(mousePressed == true){
   ellipse(400,600, mouseDist, mouseDist); 
  }
  else {
    
    }
    */
  }
 void mouseDragged() {
   if(mousePressed == true){
  fill(#B8B0B9);
  ellipse(mouseX, mouseY, 300, 300);
   }
  else if(mousePressed == false){
    rotate(radians(counter*.9));
    rect(mouseX, mouseY,40,40);
    fill(#C674B3);
    stroke(#EADFE8);
   }
}
