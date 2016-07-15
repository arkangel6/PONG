
int ballx=400;
float speedballx=4;
int width= 800;
int height = 600;
int bally= 300;
float speedbally =-4;
int paddlewidth=150;
int paddleheight=19;
int score = 0;
int highscore = 0;
void setup(){
  size(width,height);
  
}
void draw(){
  background(45,45,45);
  ellipse(ballx,bally,20,20);
  fill(255,105,180);
  stroke(255,255,255);
  ballx+=speedballx;
  bally+=speedbally;
  if(ballx>=width){
    speedballx = -speedballx;
  }
  else if(ballx<=0){
    speedballx = -speedballx;
  }
  if(bally<=0){
    speedbally = -speedbally;
    score ++;
    speedballx = speedballx *1.05;
    speedbally = speedbally *1.05;
  }
  fill(255,100,100);
  rect(mouseX, height-paddleheight, paddlewidth, paddleheight);
  
  if (intersects(ballx,bally,mouseX,height-paddleheight,paddlewidth)){
    speedbally = -speedbally;
  }
  else if(bally>=height){
   ballx = 400;
   bally = 300;
   score =0;
   speedballx = 4;
   speedbally = 4;
  
  }
  if(score>highscore){
   highscore=score; 
   
  }
  text("Highscore: "+ highscore,500,50);
  
  textSize(32);
  text(score, 750, 50);
  
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}


