int startTime = 0;
int scene = 0;
boolean switched = false;
void setup()
{
  size(800,800);
}


void draw()
{
  if(switched == false)
  {
    background(0);
  }
  else
  {
    background(180,180,180);
    textSize(40);
    int currentTime = millis() - startTime;
    int countDown = 4 - currentTime/1000;
    text(countDown, 100, 100);
    
    if(countDown < 0)
    {
      switched = false;
    }
  }
  
}

void keyPressed()
{
  startTime = millis();
  switched = true;
  
}