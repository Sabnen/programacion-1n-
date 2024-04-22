

int anchoLienzo= 600;
int altoLienzo=500;

int incremento=10;

int diametro=20;
int contadorFrame=0;
boolean creciendo=true;

void setup(){//Esta funcion se ejecuta una vez al inicio del programa
  size(600,500);
   
  
}


void draw(){//Esta funcion se ejecuta cada frame y redibuja el lienzo
  
  background(#874CCC);
  stroke(#F27BBD);
  fill(#FFD1E3);
  
  int posicionY=contadorFrame%altoLienzo;
  int posicionX=contadorFrame%anchoLienzo;
  
  
  
  line( 0,//x1                                //(0,posicionY,centroX,centroY);
  posicionY,//y1
  mouseX,//x2
  mouseY);//y2           
 
  line(posicionX,altoLienzo,mouseX,mouseY);
  line(anchoLienzo,posicionY,mouseX,mouseY);
  line(posicionX, 0, mouseX, mouseY);
 
 
  stroke(#B99470);
  line(0,altoLienzo-posicionY,mouseX, mouseY);
  line(anchoLienzo, altoLienzo-posicionY, mouseX, mouseY);
  line(anchoLienzo-posicionX,altoLienzo, mouseX, mouseY);
  line(anchoLienzo-posicionX, 0, mouseX, mouseY);
 
  circle(mouseX, mouseY,diametro);//El diametro esta parametrizado
 if (creciendo)
 {//Esta creciendo
 diametro++;
 }
 else
 {//Esta decreciendo
 diametro--;
 }
 
 if (diametro>50)
 {//llego a su tamaño max
 creciendo=false;
 }
  
 if(diametro<20){//lego a su tamaño min
   creciendo=true;
 }
  
  

  contadorFrame+=incremento;
  println("Redibujando mediante draw()" + contadorFrame);
  

  
}
