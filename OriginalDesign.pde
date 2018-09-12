int y = 150;
int c = 0;
int x = true;

void setup()
{
  size(500,500);
  frameRate(40);
}

void draw ()
{
 star();
 writing();
}

void star ()
{
  if (y<25) {
    background (0,0,154);
    if (x == true) {
      c=c+1;
    }
    if (c>255) {
      x=false;
    }
    if (x==false){
      c=c-1;
      if(c  < 0)
        x=true;
    }
    fill(255,255-c,0+c);
    triangle(250 , 125- 2*y, 175 -y, 250 +y, 325 +y, 250+y);
    triangle(250  , 295+ 2*y, 175 -y, 170-y, 325+y, 170-y);
    noStroke();
    y = y+ 1;
  } else {
    y = 0;
  }
}

void writing(){
  fill(255, 255, 255);
  textSize(25);
  text("I am a star", 190, 450);
}

        

