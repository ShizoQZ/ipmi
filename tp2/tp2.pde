PImage img1, img2, img3;
float cX, cY, opacidadTexto = 255;
int contador, estado;
String texto1, texto2, texto3;
PFont miFuente;


void setup() {
  size(640, 480);

  texto1 = "El arte Retro Wave es un estilo de arte digital nacido de la música en el año 2005.";
  texto2 = "Este está fuertemente inspirado en la cultura de la  decada de los 80.";
  texto3 = "Cuenta con un estilo fácil de reconocer, donde siempre aparecen montañas, puestas de sol o palmeras en un mundo retro.";

  contador = 0;
  estado = 1;

  img1 = loadImage("retroWave.jpg");
  img2 = loadImage("retroWave2.jpg");
  img3 = loadImage("1077190.jpg");
  miFuente = loadFont("ComicSansMS-Italic-48.vlw");
  textFont(miFuente);
  textAlign(LEFT);
}

void draw() {
  println("estado="+estado);
  background(0);

  if (estado == 1) {
    image(img1, 0, 0);
    if ( mouseX>250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      fill(0, 255, 0);
    } else {
      fill(#BA09E3);
    }
    rect( 250, 170, 150, 80);
    fill(0);
    textSize(20);
    text("Iniciar", 290, 215);
  }
  if (estado == 2) {
    image(img1, 0, 0);
    fill(255);
    textSize(30);
    text(texto1, cX, cY, 500, 200);
    contador++;
    cX=20;
    cY=320;


    if (contador >=120) {
      estado++;
      contador = 0;
    }
  } else if (estado == 3) {
    image(img1, 0, 0);
    fill(255);
    textSize(30);
    text(texto1, cX, cY, 500, 200);
    cX+=5;

    if (cX >= width) {
      estado++;
      contador = 0;
      cX=width;
      cY=350;
    }
  } else if (estado == 4) {
    image(img2, 0, 0);
    fill(255);
    textSize(30);
    text(texto2, cX, cY, 500, 200);
    contador++;

    if (contador>=20) {
      estado++;
      contador=0;
    }
  } else if (estado == 5) {
    image(img2, 0, 0);
    fill(255);
    textSize(30);
    text(texto2, cX, cY, 500, 200);
    cX-=10;
    if (cX == 20 && estado == 5) {
      estado++;
    }
  } else if (estado == 6) {
    image(img2, 0, 0);
    fill(255);
    textSize(30);
    text(texto2, cX, cY, 500, 200);
    cX=20;
    contador++;

    if (contador >= 60 && estado == 6) {
      image(img2, 0, 0);
      fill(255, opacidadTexto);
      textSize(30);
      text(texto2, cX, cY, 500, 200);
      opacidadTexto-=2;

      if (opacidadTexto <= 0) {
        contador=0;
        estado++;
        cX=20;
        cY=-50;
      }
    }
  } else if (estado == 7) {
    image(img3, 0, 0);
    fill(255);
    textSize(30);
    text(texto3, cX, cY, 500, 200);
    cY+=4;
    if (cY >= 320) {
      contador=0;
      estado++;
    }
  } else if (estado == 8) {
    image(img3, 0, 0);
    fill(255);
    textSize(30);
    text(texto3, cX, cY, 500, 200);
    cY=320;
    contador++;

    if (contador == 180) {
      estado++;
    }
  } else if (estado == 9) {
    image( img3, 0, 0);
    fill(255);
    textSize(30);
    text ( texto3, cX, cY, 600, 200);
    cX+=5;

    if (cX >= width) {
      estado++;
    }
  } else if (estado == 10) {
    image(img3, 0, 0);
    if ( mouseX>250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      fill(0, 255, 0);
    } else {
      fill(#BA09E3);
    }
    rect( 250, 170, 150, 80);
    fill(0);
    textSize(20);
    text("Reiniciar", 288, 215);
  }
}


void mousePressed() {

  if (estado==1) {
    if ( mouseX>250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      estado = 2;
    }
  }

  else if ( estado==10) {
    if ( mouseX>250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      estado = 2;
    }
  } else {
    estado++;
    contador = 0;
    if (estado == 3) {
      cX = width;
    } else {
      cX = 20;
    }
  }
}
