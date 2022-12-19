float limit = 48;
float splitmin = 16;
float maxsize = 2;
float divvy1 = 100;
float divvy2 = 100;
float divvy3 = 100;
float divvy4 = 100;

void setup()
{
  size(1024, 1024);
  
  make();
}

void make()
{
  divvy1 = 50 + random(100);
  divvy2 = 50 + random(100);
  divvy3 = 50 + random(100);
  divvy4 = 50 + random(100);
  limit = 32 + random(64);
  background(0);
  drawthis(0, 0, width, height);
  noFill();
  rect(0, 0, width-1, height-1);
  rect(1, 1, width-2, height-2);
  save("one.png");
}

void draw()
{
  if(keyPressed)
  {
    make();
  }
}

void drawthis(float x, float y, float w, float h)
{  
  if(w/h > maxsize)
  {
    drawthis(x, y, w/2, h);
    drawthis(x+w/2, y, w/2, h);
  }
  else if(h/w > maxsize)
  {
    drawthis(x, y, w, h/2);
    drawthis(x, y+h/2, w, h/2);
  }
  else if((w > limit) && (h > limit))
  {
    if(random(1.0) > 0.5)
    {
      // vertical split
      float split = random(w - splitmin*2) + splitmin;
      
      if(random(1.0) > 0.5)
      {
        drawthis(x, y, split, h);
        drawthis(x+split, y, w-split, h);
      }
      else
      {
        drawthis(x + w - split, y, split, h);
        drawthis(x, y, w-split, h);
      }
    }
    else
    {
      // horizontal split
      float split = random(h - splitmin*2) + splitmin;
      
      if(random(1.0) > 0.5)
      {
        drawthis(x, y, w, split);
        drawthis(x, y+split, w, h-split);
      }
      else
      {
        drawthis(x, y, w, h-split);
        drawthis(x, y+h-split, w, split);
      }
    }
  }
  else
  {
    float xpos = x + w/2;
    float ypos = y + h/2;
    float c = (sin(xpos/divvy1 + ypos/divvy2) + 1.0) * 64;
    c += (sin(xpos/divvy3 - ypos/divvy4) + 1.0) * 64;
  
    c += random(32);

    float qw = w/4;
    float qh = h/4;
    float hw = w/2;
    float hh = h/2;

    fill(c, c*0.75 + 64, c);
    if(random(1.0)>0.5)
    {
      rect(x+1, y+1, w-2, h-2, max(h, w), 0, max(h, w), 0);
      fill(0);
      rect(x+qw, y+qh, w-hw, h-hh, 0, max(h, w), 0, max(h, w));
    }
    else
    {
      rect(x+1, y+1, w-2, h-2, 0, max(h, w), 0, max(h, w));
    }
  }
}
