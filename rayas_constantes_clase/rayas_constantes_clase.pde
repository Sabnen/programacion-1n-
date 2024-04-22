//Area de variables globales
int centroX;
int centroY;

int anchoLienzo= 600;
int altoLienzo=500;

int incremento=10;


int contadorFrame=0;
void setup(){//Esta funcion se ejecuta una vez al inicio del programa
  size(600,500);
  
  centroX=anchoLienzo/2;
  centroY=altoLienzo/2;
  
  println("Centro en: " + centroX+ " , "+ centroY);
  
}

void draw(){//Esta funcion se ejecuta cada frame y redibuja el lienzo
  
  background(#874CCC);
  stroke(#F27BBD);
  fill(#FFD1E3);
  
  int posicionY=contadorFrame%altoLienzo;
  int posicionX=contadorFrame%anchoLienzo;
  
  
  
  line( 0,//x1                                //(0,posicionY,centroX,centroY);
  posicionY,//y1
  centroX,//x2
  centroY);//y2           
 
  line(posicionX,altoLienzo,centroX,centroY);
  line(anchoLienzo,posicionY,centroX,centroY);
  line(posicionX, 0, centroX, centroY);
 
 
  circle(centroX, centroY,20);
  contadorFrame+=incremento;
  println("Redibujando mediante draw()" + contadorFrame);
  

  
}
