PImage retrato;
  size(800,400);
  retrato = loadImage("capucha.jpeg");  
  background(#8B6F51);
  image(retrato,399,0,400,400);
  
    
  //cuello chaqueta 1
  fill(0);
  beginShape();
  vertex(0,210);
  vertex(45,220);
  vertex(70,230);
  vertex(60,300);
  vertex(300,390);
  vertex(0,399);
  endShape(); 
    
  //sombra
  fill(#342414);
  beginShape();
  vertex(399,235);
  vertex(360,290);
  vertex(310,300);
  vertex(335,295);
  vertex(305,335);
  vertex(370,399);
  vertex(399,399);
  endShape();
  beginShape();
  vertex(300,0);
  vertex(399,0);
  vertex(399,100);
  endShape();
            
  //Forma del casco
  fill(#340303);
  beginShape();
  vertex(60,300);
  vertex(60,290);
  vertex(75,170);
  vertex(85,130);
  vertex(100,105);
  vertex(110,95);
  vertex(112,90);
  vertex(115,85);
  vertex(117,80);
  vertex(120,60);
  vertex(125,50);
  vertex(145,26);
  vertex(165,10);
  vertex(180,0);
  vertex(370,0);
  vertex(385,10);
  vertex(399,25);
  vertex(399,235);
  vertex(360,290);
  vertex(310,300);
  vertex(290,320);
  vertex(240,355);
  vertex(150,365);
  vertex(75,333);
  vertex(65,315);
  endShape();
  
  //cuello 1
  fill(#090B0D);
  beginShape();
  vertex(335,295);
  vertex(310,300);
  vertex(290,320);
  vertex(280,340);
  vertex(300,345);
  endShape();
  
  //cuello chaqueta 2
  fill(#0d0301);
  beginShape();
  vertex(290,320);
  vertex(270,310);
  vertex(260,310);
  vertex(255,320);
  vertex(235,355);
  vertex(215,399);
  vertex(370,399);
  endShape();
  
  
  
  //sombra cuello
  fill(0);
  beginShape();
  vertex(237,355);
  vertex(150,365);
  vertex(75,333);
  vertex(150,399);
  vertex(216,399);
  endShape();
  
  //sombra 2
  fill(#090B0D);
  beginShape();
  vertex(75,333);
  vertex(150,399);
  vertex(0,399);
  vertex(0,380);
  vertex(55,365);
  endShape();
  
  //luz 1
  fill(#35454D);
  beginShape();
  vertex(67,320);
  vertex(55,365);
  vertex(0,380);
  vertex(47,380);
  vertex(60,370);
  vertex(63,360);
  vertex(70,385);
  vertex(75,333);
  endShape();
  
  //luz 2
  noStroke();
  fill(#5d040a);
  beginShape();
  vertex(180,0);
  vertex(230,0);
  vertex(180,75);
  vertex(140,133);
  vertex(100,200);
  vertex(87,250);
  vertex(84,320);
  vertex(150,365);
  vertex(75,333);
  vertex(65,315);
  vertex(60,300);
  vertex(60,290);
  vertex(75,170);
  vertex(85,130);
  vertex(100,105);
  vertex(110,95);
  vertex(112,90);
  vertex(115,85);
  vertex(117,80);
  vertex(120,60);
  vertex(125,50);
  vertex(145,26);
  vertex(165,10);
  endShape();
  
  //luz 3
  fill(#8c383e);
  beginShape();
  vertex(188,0);
  vertex(165,20);  
  vertex(161,26);
  vertex(162,27);
  vertex(164,28);
  vertex(168,28);
  vertex(170,28);
  vertex(173,26);
  vertex(175,24);
  vertex(177,22);
  vertex(205,0);  
  endShape();
  
  //detalles casco
  fill(0);
  stroke(1);
  line(215,0,130,90);
  line(154,120,85,130);
  line(85,130,87,300);
  line(87,300,145,325);
  line(145,325,305,225);
  line(305,225,295,150);
  line(280,150,399,30);
  
  //ojo 1
  ellipse(154,90,80,90);
  fill(160);
  beginShape();
  vertex(130,65);
  vertex(155,77);
  vertex(186,101);
  vertex(165,100);
  vertex(145,95);
  vertex(138,85);
  endShape();
  
  //ojo 2
  fill(0);
  ellipse(300,150,115,90);
  fill(160);
  beginShape();
  vertex(260,133);
  vertex(300,137);
  vertex(310,140);
  vertex(345,160);
  vertex(306,163);
  endShape();
