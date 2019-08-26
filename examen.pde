
float angle; //variable tipo float 
float jitter; //variable tipo float 

void setup() {
  size(640,640); //tamaño de pantalla
  noStroke(); //   Inhabilita el dibujo del trazo no se dibujará nada en la pantalla 
  fill(255);  //color blanco
  rectMode(CENTER);   //modo predeterminado 
 
}

void draw() {
  background(51); // fondo gris

  // 
  if (second() % 2 == 0) {   //tiempo que se tardara a hacer el camc¿bio
    jitter = random(-0.1, 0.7); // velocidad del movimiento 
  }
 
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/2, height/2); //posición donde estara el circulo y el cuadrado
  rotate(c); // rotación
  fill(#EA152E); // color rojo
  rect(0, 0, 180, 180);  //cuadrado
  fill(#EA152E); // color rojo
   ellipse(162,162,190,190); // circulo
   
   fill(#03C6FF);   //color celetes
   rect(0,0,50,30); // linea
   fill(#03C6FF); //color celeste
   
}
