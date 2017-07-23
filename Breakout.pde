float ballX, ballY, ballD, ballSpeedX, ballSpeedY;
float paddleW, paddleH;
void setup() {
  size(1920, 1080);
  ballX = width/2;
  ballY = height/2;
  ballSpeedX = 4;
  ballSpeedY = 5;
  ballD = 35;
  paddleW = 150;
  paddleH = 20;
}
void draw() {
  background(0);
  rect(mouseX, height-200, paddleW, paddleH);
  drawBall();
  ballMovement();
  ballContact();
}
void drawBall() {
  ellipse(ballX, ballY, ballD, ballD);
}
void ballMovement() {
  ballY += ballSpeedY;
  if (ballY >= height) {
    //gameOver();
  } else if (ballY <= 0) {
    ballSpeedY = ballSpeedY*-1;
  }
  ballX +=ballSpeedX;
  if (ballX >= width) {
    ballSpeedX = ballSpeedX * -1;
  } else if ( ballX <= 0) {
    ballSpeedX = ballSpeedX * -1;
  }
}
void ballContact() {
  if (ballX >= mouseX && ballX <= paddleW + mouseX && ballY >= height - 200 && ballY <= paddleH + height - 200) {
    ballSpeedY = ballSpeedY * -1; 
  }
}