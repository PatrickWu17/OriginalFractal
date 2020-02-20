void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  background(127);
  fractal(250,250,250,250);
  
}

public void fractal(int x,int y,int siz, int siz2){
  fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
  rect(x,y,siz,siz2);
  if (siz > 10){
   fractal(x,y - siz / 2, siz / 2, siz / 2); 
   fractal(x, y + siz / 2, siz / 2, siz / 2);
   fractal(x - siz / 2, y, siz/2, siz/2);
   fractal(x + siz / 2, y , siz / 2, siz / 2);
   
  }
}
