class Pagina
{ // atributos
PImage dibujo;
String texto;
color c;

    Pagina (String t, String nombreDib)
    {    texto = t;
         dibujo = loadImage (nombreDib);
         dibujo.resize (height, width);
         c = color (0, 0, 0);
    }

void dibujar () {
  
  image (dibujo, 0, 0);
  fill (c);
  textSize (32);
  text (texto, 400, 400);
}



}