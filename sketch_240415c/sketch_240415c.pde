size(700,700);
background(#000000);
stroke(#00FF00);

int separacion=10;
int iteraciones=700;//separacion;

for(int i=0;i<iteraciones;i++){
  //  x1 y1    x2 y2
  line(0,separacion*i, separacion*(i+1),700);
}
