// Area de variables globales
int centroX = 100;
int centroY = 100;
int tamanoBola = 100;

int direccionX = 1;
int direccionY = 1;

void setup() { // Esta función se ejecuta una vez al inicio del programa
  size(600, 500);
}

void draw() {
  background(#874CCC);
  fill(#FFD1E3);

  centroX += direccionX * 1;
  centroY += direccionY * 1;

  ellipse(centroX, centroY, tamanoBola, tamanoBola);
  
  // Rebotar en los bordes de la pantalla
  if (centroX >= width - tamanoBola/2 || centroX <= tamanoBola/2) {
    direccionX *= -1; 
  }
  
  if (centroY >= height - tamanoBola/2 || centroY <= tamanoBola/2) {
    direccionY *= -1;
  }
}
