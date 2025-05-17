PImage botón, img1, img2, img3, img4, img5;
float cX, cY, opacidadTexto = 255, tam = 0;
int contador, estado, text;
String texto1, texto2, texto3, texto4, texto5, texto6;
PFont fuente1, fuente2, fuente3;


void setup() {
  size(640, 480);

  texto1 = "El cuento narra la historia de un joven que asesina a un anciano por su ojo de buitre.";
  texto2 = "El narrador, que insiste en su cordura, planea meticulosamente el crimen, aprovechando la noche para entrar en la habitación del anciano y así matarlo y despedazarlo.";
  texto3 = "Luego de esconder los restos del anciano bajo el suelo del salon, el narrador recibe una visita inesperada de la policia a causa de una denuncia por ruidos extraños.";
  texto4 = "Durante la visita el joven mantiene la calma e intenta disuadir cualquier sospecha pero la paranoia dentro de el crece haciendole creer que el sonido de sus propios latidos provienen en realidad del suelo";
  texto5 = "Mientras el sonido de los latidos crece la culpa y la paranoia lo carcomen cada vez mas dudando de si los policias sospechan de el o si incluso pueden escuchar los latidos";
  texto6 = "Finalmente, al encontrarse rebasado de culpa y locura, decide confesar el asesinato y entregarse a la policia.";

  contador = 0;
  estado = 1;

  botón = loadImage("botón.png");
  img1 = loadImage("Corazón delator portada.jpg");
  img2 = loadImage("Corazón delator 1.jpg");
  img3 = loadImage("Corazón delator 2.jpg");
  img4 = loadImage("Corazón delator 3.jpg");
  img5 = loadImage("Corazón delator 4.jpg");
  fuente1 = createFont("data/Fonts/Leander.ttf", 32);
  fuente2 = createFont("data/Fonts/bloodcrowc.ttf", 40);
  fuente3 = createFont("data/Fonts/CRAZK___.TTF", 32);
  

}

void draw() {
  println("estado="+estado);
  background(0);
  if (estado == 1) {
    textFont(fuente1);
    image(img1, 0, 0, 640, 480);
    image(botón, 227, 170, 150, 80);
    textSize(20);
    text("Iniciar", 275, 215);
  }
  if (estado == 2) {
    image(img1, 0, 0, 640, 480);
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
    image(img1, 0, 0, 640, 480);
    fill(255);
    text(texto1, cX, cY, 500, 200);
    cX+=5;

    if (cX >= width) {
      estado++;
      contador = 0;
      cX=width;
      cY=250;
    }
  } else if (estado == 4) {
    image(img2, 0, 0, 640, 480);
    fill(255);

    text(texto2, cX, cY, 500, 250);
    contador++;

    if (contador>=20) {
      estado++;
      contador=0;
    }
  } else if (estado == 5) {
    image(img2, 0, 0, 640, 480);
    fill(255);

    text(texto2, cX, cY, 500, 250);
    cX-=10;
    if (cX == 20 && estado == 5) {
      estado++;
    }
  } else if (estado == 6) {
    image(img2, 0, 0, 640, 480);
    fill(255);

    text(texto2, cX, cY, 500, 250);
    cX=20;
    contador++;

    if (contador >= 60 && estado == 6) {
      image(img2, 0, 0, 640, 480);
      fill(255, opacidadTexto);

      text(texto2, cX, cY, 500, 250);
      opacidadTexto-=3;

      if (opacidadTexto <= 0) {
        contador=0;
        estado++;
        cX=20;
        cY=-50;
      }
    }
  } else if (estado == 7) {
    textSize(40);
    textFont(fuente2);
    image(img3, 0, 0, 640, 480);
    fill(255);

    text(texto3, cX, cY, 500, 200);
    cY+=4;
    if (cY >= 290) {
      contador=0;
      estado++;
    }
  } else if (estado == 8) {
    image(img3, 0, 0, 640, 480);
    fill(255);

    text(texto3, cX, cY, 500, 200);
    contador++;

    if (contador == 180) {
      estado++;
    }
  } else if (estado == 9) {
    image( img3, 0, 0, 640, 480);
    fill(255);

    text ( texto3, cX, cY, 600, 200);
    cY+=5;

    if (cY >= height) {
      estado++;
    }
  } else if (estado == 10) {
    textFont(fuente3);
    image(img4, 0, 0, 640, 480);
    fill(255);
    textSize(30);
    text (texto4, cX, cY, 600, 450);
    cY-=3;

    if (cY<=200) {
      contador=0;
      estado++;
    }
  } else if (estado == 11) {
    image(img4, 0, 0, 640, 480);
    fill(255);

    text (texto4, cX, cY, 600, 450);
    contador++;

    if (contador == 120) {
      estado++;
    }
  } else if (estado == 12) {
    image(img4, 0, 0, 640, 480);
    fill(255);

    text (texto4, cX, cY, 600, 450);
    cY-=5;

    if (cY<=-200) {
      contador=0;
      estado++;
    }
  } else if (estado == 13) {
    image(img4, 0, 0, 640, 480);
    fill(255);
    textSize(tam);
    text (texto5, cX, cY, 600, 450);
    cY=200;
    tam++;

    if (tam>=30) {
      estado++;
    }
  } else if (estado == 14) {
    image(img4, 0, 0, 640, 480);
    fill(255);
    textSize(tam);
    text (texto5, cX, cY, 600, 450);
    contador++;

    if (contador==240) {
      contador=0;
      estado++;
    }
  } else if (estado == 15) {
    image(img4, 0, 0, 640, 480);
    fill(255);
    textSize(tam);
    text (texto5, cX, cY, 600, 450);
    tam--;

    if (tam<=0) {
      tam=30;
      cY=350;
      cX=-480;
      estado++;
    }
  } else if (estado == 16) {
    textFont(fuente1);
    image(img5, 0, 0, 640, 480);
    fill(255);
    textSize(tam);
    text (texto6, cX, cY, 600, 200);
    cX+=10;

    if (cX>=20) {
      estado++;
    }
  } else if (estado == 17) {
    image(img5, 0, 0, 640, 480);
    fill(255);
    textSize(tam);
    text (texto6, cX, cY, 600, 200);
    contador++;

    if (contador>=180) {
      contador=0;
      estado++;
    }
  } else if (estado == 18) {
    image(img5, 0, 0, 640, 480);
    fill(255);
    textSize(tam);
    text (texto6, cX, cY, 600, 200);
    cX+=10;

    if (cX>=width) {
      estado++;
    }
  } else if (estado == 19) {
    image(img1, 0, 0, 640, 480);
    image(botón, 227, 170, 150, 80);
    textSize(20);
    text("Reiniciar", 265, 215);
  }
}


void mousePressed() {

  if (estado==1) {
    if ( mouseX>240 && mouseX<250+120
      && mouseY >170 && mouseY<170+70 ) {
      estado = 2;
    }
  } else if ( estado==19) {
    if ( mouseX>240 && mouseX<250+120
      && mouseY >170 && mouseY<170+70 ) {
      estado = 2;
    }
  }
}
