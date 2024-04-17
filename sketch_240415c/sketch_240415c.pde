size(600,600);
background(#000000);
stroke(#00FF00);

int separacion=60;
int iteraciones=600;//separacion;

for(int i=0;i<iteraciones;i++){
  //  x1 y1    x2 y2
  line(0,separacion*i, separacion*(i+1),iteraciones);
  line(0,iteraciones-(separacion*i), separacion*(i+1),0);
  line(separacion*i,0,iteraciones,separacion*(i+1));
  line(iteraciones,separacion*i,iteraciones-separacion*(i+1),iteraciones);
}
