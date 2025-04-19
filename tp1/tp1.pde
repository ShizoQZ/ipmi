PImage imagen;
void setup() {
  size(800, 400);
  imagen = loadImage("Sur la plage.jpg");
  background(0);
  image(imagen, 0, 0, 400, 400);
  
}
void draw() {
  
  noStroke();
  
  //confundí el orden de la imagen y el dibujo, por eso usé translate
  translate(400,0);
  
  //Mar
  fill(#3f5e43);
  square(0, 0, 400);
  
  //cielo
  fill(#9c8d64);
  rect(0,0,400,55);
  fill(#81b2c9);
  beginShape();
  vertex(111,21);
  vertex(109,21);
  vertex(108,21);
  vertex(111,21);
  vertex(130,23);
  vertex(140,23);
  vertex(198,20);
  vertex(202,16);
  vertex(213,13);
  vertex(248,10);
  vertex(246,9);
  vertex(204,9);
  vertex(146,12);
  vertex(143,17);
  vertex(111,18);
  endShape();
  
  //orilla
  fill(#ecd47e);
  beginShape();
  vertex(0,196);
  vertex(26,201);
  vertex(28,199);
  vertex(33,197);
  vertex(40,197);
  vertex(62,204);
  vertex(88,208);
  vertex(152,229);
  vertex(238,232);
  vertex(291,230);
  vertex(320,235);
  vertex(330,241);
  vertex(347,242);
  vertex(370,246);
  vertex(390,256);
  vertex(394,253);
  vertex(400,254);
  vertex(400,400);
  vertex(0,400);
  endShape();
  
  //arena
  fill(#a68857);
  beginShape();
  vertex(0,209);
  vertex(79,222);
  vertex(99,225);
  vertex(119,228);
  vertex(292,242);
  vertex(400,263);
  vertex(400,400);
  vertex(0,400);
  endShape();
  
  // 1
  //Rosa
  fill(#e08072);
  beginShape();
  vertex(81,230);
  vertex(81,228);
  vertex(82,225);
  vertex(90,213);
  vertex(90,199);
  vertex(92,187);
  vertex(92,186);
  vertex(98,179);
  vertex(104,176);
  vertex(105,178);
  vertex(112,176);
  vertex(112,167);
  vertex(124,168);
  vertex(129,173);
  vertex(140,167);
  vertex(147,174);
  vertex(128,206);
  vertex(103,204);
  vertex(93,229);
  vertex(83,232);
  endShape();
  
  //sombra arena
  fill(#2c2b21);
  beginShape();
  vertex(88,233);
  vertex(98,239);
  vertex(112,242);
  vertex(115,237);
  vertex(102,236);
  vertex(90,231);
  endShape();
  
  //sombra 1
  fill(#95535a);
  beginShape();
  vertex(82,230);
  vertex(86,230);
  vertex(86,227);
  vertex(91,226);
  vertex(94,217);
  vertex(96,207);
  vertex(98,198);
  vertex(104,192);
  vertex(110,198);
  vertex(118,197);
  vertex(118,191);
  vertex(121,185);
  vertex(125,183);
  vertex(127,184);
  vertex(130,185);
  vertex(135,183);
  vertex(137,176);
  vertex(141,173);
  vertex(144,173);
  vertex(145,170);
  vertex(151,175);
  vertex(153,194);
  vertex(156,201);
  vertex(155,212);
  vertex(156,218);
  vertex(143,241);
  vertex(121,224);
  vertex(105,210);
  vertex(100,223);
  vertex(92,234);
  vertex(82,230);
  endShape();
  
  //sombra brazo
  stroke(#58292e);
  line(147,216,147,198);
  noStroke();
  
  //2
  //torso negro
  fill(#171b1a);
  beginShape();
  vertex(164,228);
  vertex(169,219);
  vertex(167,214);
  vertex(202,218);
  vertex(219,231);
  vertex(223,260);
  vertex(212,258);
  vertex(173,262);
  vertex(164,228);
  endShape();
  
  //torso marron
  fill(#685743);
  beginShape();
  vertex(167,225);
  vertex(171,222);
  vertex(173,224);
  vertex(173,228);
  vertex(167,225);
  endShape();
  
  beginShape();
  vertex(178,231);
  vertex(178,228);
  vertex(183,230);
  endShape();
  
  beginShape();
  vertex(176,245);
  vertex(175,237);
  vertex(182,237);
  vertex(186,244);
  endShape();
  
  beginShape();
  vertex(194,249);
  vertex(187,237);
  vertex(192,237);
  vertex(200,248);
  endShape();
  
  circle(195,229,3);
  
  beginShape();
  vertex(204,244);
  vertex(198,237);
  vertex(201,234);
  vertex(207,240);
  endShape();
  
  circle(210,250,3);
  
  circle(199,222,3);
  
  beginShape();
  vertex(204,231);
  vertex(211,235);
  vertex(210,238);
  vertex(204,232);
  endShape();
  
  beginShape();
  vertex(213,242);
  vertex(214,241);
  vertex(219,246);
  vertex(217,249);
  endShape();
  
  stroke(#685743);
  line(208,226,214,231);
  
  line(217,235,220,240);
  noStroke();
  
  beginShape();
  vertex(179,215);
  vertex(186,212);
  vertex(194,210);
  vertex(195,215);
  vertex(190,224);
  vertex(186,225);
  vertex(178,221);
  endShape();
  
  fill(#3f2f20);
  circle(187,222,3);
  circle(189,222,2);
  circle(176,217,6);
  
  circle(181,213,6);
  circle(184,213,6);
  circle(187,213,4);
  circle(190,212,4);
  circle(192,210,6);
  
  //rojo
  fill(#ce4243);
  beginShape();
  vertex(162,214);
  vertex(162,209);
  vertex(165,201);
  vertex(170,194);
  vertex(193,189);
  vertex(199,194);
  vertex(170,215);
  endShape();
  
  //sombra roja
  fill(#833b3c);
  beginShape();
  vertex(166,215);
  vertex(166,210);
  vertex(168,205);
  vertex(170,203);
  vertex(173,207);
  vertex(176,209);
  vertex(176,205);
  vertex(176,205);
  vertex(174,199);
  vertex(176,198);
  vertex(187,199);
  vertex(190,199);
  vertex(181,195);
  vertex(194,195);
  vertex(196,191);
  vertex(198,195);
  vertex(195,205);
  vertex(191,211);
  vertex(189,212);
  vertex(182,214);
  vertex(174,215);
  vertex(166,215);
  endShape();
  
  stroke(#3f2f20);
  line(181,214,192,211);
  noStroke();
  
  // 1
  //falda
  fill(#1b2421);
  beginShape();
  vertex(121,225);
  vertex(130,225);
  vertex(137,222);
  vertex(147,216);
  vertex(156,217);
  vertex(162,219);
  vertex(166,224);
  vertex(173,228);
  vertex(178,236);
  vertex(181,245);
  vertex(199,259);
  vertex(206,264);
  vertex(205,269);
  vertex(201,271);
  vertex(171,266);
  vertex(150,266);
  vertex(136,268);
  vertex(120,268);
  vertex(116,266);
  vertex(111,252);
  vertex(111,240);
  vertex(121,225);
  endShape();
  
  //sombra 2
  fill(#95535a);
  beginShape();
  vertex(114,165);
  vertex(124,162);
  vertex(129,171);
  vertex(123,173);
  vertex(116,170);
  vertex(114,165);
  endShape();
  
  //sombrero 1
  fill(#cb9841);
  beginShape();
  vertex(97,140);
  vertex(96,137);
  vertex(99,133);
  vertex(112,127);
  vertex(115,129);
  endShape();
  
  //sombrero 2
  fill(#131614);
  beginShape();
  vertex(97,144);
  vertex(96,140);
  vertex(100,137);
  vertex(107,132);
  vertex(116,129);
  vertex(117,134);
  endShape();
  
  //sombrero 3
  fill(#937349);
  beginShape();
  vertex(102,158);
  vertex(97,158);
  vertex(94,155);
  vertex(96,144);
  vertex(102,140);
  vertex(111,134);
  vertex(117,133);
  vertex(124,131);
  vertex(130,134);
  vertex(131,136);
  vertex(126,141);
  vertex(102,158);
  endShape();
  
  //cabeza
  fill(#151e1b);
  beginShape();
  vertex(112,167);
  vertex(103,159);
  vertex(101,153);
  vertex(103,146);
  vertex(113,139);
  vertex(124,139);
  vertex(125,142);
  vertex(126,150);
  vertex(124,164);
  endShape();
  
  // 3
  //vestido
  fill(#19221f);
  beginShape();
  vertex(222,260);
  vertex(238,266);
  vertex(259,274);
  vertex(280,273);
  vertex(297,269);
  vertex(310,267);
  vertex(323,266);
  vertex(321,264);
  vertex(320,260);
  vertex(314,255);
  vertex(303,253);
  vertex(291,239);
  vertex(274,228);
  vertex(274,216);
  vertex(278,204);
  vertex(290,204);
  vertex(285,190);
  vertex(224,189);
  vertex(223,198);
  vertex(226,209);
  vertex(229,218);
  vertex(240,231);
  vertex(230,234);
  vertex(225,235);
  vertex(219,238);
  vertex(219,245);
  endShape();
  
  beginShape();
  vertex(278,204);
  vertex(282,214);
  vertex(282,217);
  vertex(277,235);
  vertex(288,240);
  vertex(291,231);
  vertex(293,219);
  vertex(293,213);
  vertex(291,204);
  endShape();
  
  
  //paraguas
  fill(#d0b752);
  beginShape();
  vertex(219,188);
  vertex(215,169);
  vertex(213,161);
  vertex(207,143);
  vertex(208,141);
  vertex(217,128);
  vertex(227,116);
  vertex(235,105);
  vertex(237,104);
  vertex(253,109);
  vertex(280,111);
  vertex(277,183);
  endShape();
  
  //sombra paraguas
  fill(#9a8035);
  beginShape();
  vertex(218,188);
  vertex(231,190);
  vertex(241,193);
  vertex(247,197);
  vertex(253,204);
  vertex(259,200);
  vertex(273,190);
  vertex(288,190);
  vertex(289,178);
  vertex(290,168);
  vertex(300,147);
  vertex(296,142);
  vertex(289,133);
  vertex(283,123);
  vertex(280,112);
  vertex(267,117);
  vertex(256,125);
  vertex(247,136);
  vertex(258,144);
  vertex(271,155);
  vertex(254,168);
  vertex(252,170);
  vertex(247,167);
  vertex(229,162);
  vertex(237,148);
  vertex(233,151);
  vertex(228,159);
  endShape();
  
  stroke(#9a8035);
  line(252,169,250,157);
  noStroke();
  
  beginShape();
  vertex(210,140);
  vertex(216,135);
  vertex(221,134);
  vertex(228,132);
  vertex(241,135);
  vertex(230,134);
  vertex(220,137);
  vertex(210,141);
  endShape();
  
}
