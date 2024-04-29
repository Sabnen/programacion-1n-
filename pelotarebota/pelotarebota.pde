// Área de variables globales
int centroX = 100;
int centroY = 100;
int tamanoBola = 100;

int direccionX = 1;
int direccionY = 1;

int contadorFrame = 0;
int incremento = 10;

void setup() {
  size(600, 500);
}

void draw() {
  background(#874CCC);
  fill(#FFD1E3);

  centroX += direccionX * incremento;
  centroY += direccionY * incremento;

  ellipse(centroX, centroY, tamanoBola, tamanoBola);

  // Rebotar en los bordes de la pantalla
  if (centroX >= width - tamanoBola/2) {
    direccionX = -1; 
  }
  
  if (centroX <= tamanoBola/2) {
    direccionX = 1;
  }
  
  if (centroY >= height - tamanoBola/2) {
    direccionY = -1;
  }
  
  if (centroY <= tamanoBola/2) {
    direccionY = 1;
  }

  contadorFrame += incremento;
}
