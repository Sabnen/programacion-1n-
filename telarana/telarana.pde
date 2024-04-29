size(800, 800);
background(#874CCC);
stroke(#FFD1E3);


int centroX=400;
int centroY=400;
int separacion=80;
int sep45grados=56;
  
  line(400,0,400,800);
  line(0,400,800,400);
  line(400,0,400,000);
  line(0,0,800,800);
  line(0,800,800,0);

for(int i=1 ;i<=5 ; i++){
  int x = centroX + separacion * i ;
  int y = centroY+ separacion*i;

  int xInterm=centroX+sep45grados * i;
  int yInterm=centroY+sep45grados* i;
  
line(x,centroY, xInterm,yInterm);
line(xInterm, yInterm, centroX, y);
line(centroX,y,centroX-56*i, centroY+56*i);
line(centroX-sep45grados*i, centroY+sep45grados*i, centroX-separacion*i, centroY);
line(centroX-separacion*i, centroY, centroX-56*i,centroY-56*i); 
line(centroX-56*i,centroY-56*i, centroX+56*i,centroY);
}
