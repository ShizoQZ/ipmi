//Link a video explicativo: https://youtu.be/eFKmCMh3JBM

PImage img;
int cantX = 12, cantY = 8;
int color1, color2, cambioColor;
float mouseXInicial = 0;
float desplazamientoTotal = 0;
float desplazamientoBase = 25;
float espacioGris = 2;
boolean mousePresionado = false;

void setup() {
  size(800, 400);
  img = loadImage("F_32.jpg");
  color1 = color(#FFFF00);
  color2 = color(0);
}

void draw() {
  background(190);
  noStroke();

  if (mousePresionado) {
    desplazamientoTotal += (mouseX - mouseXInicial) / 4;
    mouseXInicial = mouseX;
  }
  float desplazamientoMap = map(desplazamientoTotal, 0, width, -cantX * (400 / cantX) / 3, cantX * (400 / cantX) / 3);

  cuadrados(400 / cantX, 395 / cantY, desplazamientoMap + desplazamientoBase);
  image(img, 0, 0, 400, 400);
}


color obtenerColor(int i, int j) {
  if ((i + j) % 2 == 0) {
    return color1; //amarillo
  } else {
    return color2; //negro
  }
}

void cuadrados(float modX, float modY, float desplazamiento) {
  for (int j = 0; j < cantY; j++) {
    float desplazamientoFila;
    float espacio = j * (modY + espacioGris); 

    if (j % 2 == 0) {
      desplazamientoFila = desplazamiento;
    } else {
      desplazamientoFila = -desplazamiento;
    }

    for (int i = -cantX; i < 400 / modX + cantX; i++) {
      fill(obtenerColor(i, j));
      rect(i * modX + 200 + desplazamientoFila, espacio, modX, modY);
    }
  }
}

void keyPressed() {

  if (key == 'e') {
    cambioColor = color1;
    color1 = color2;
    color2 = cambioColor;
  }
  if (key == 'r') {
    desplazamientoTotal = 0;
    color1 = color(#FFFF00);
    color2 = color(0);
  }
}

void mousePressed() {
  mousePresionado = true;
  mouseXInicial = mouseX;
}

void mouseReleased() {
  mousePresionado = false;
}
