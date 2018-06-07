class Boton
{// atributos
  int x,y;
  int ancho, alto;
  color c;
  PImage icon;
  
  Boton (int x1, int y1, int ancho1, int alto1, String icon1)
  {    x=x1;
       y=y1;
       ancho=ancho1;
       alto=alto1;
       icon = loadImage (icon1);
       icon.resize (ancho, alto);
       //adecuarla al tamano del boton
  }
  
  void dibujar (){
  image (icon, x, y);
  }
  boolean pertenece (int px, int py)
  {    if ((px>=x)&(px<=x+ancho) & (py>=y)&(py<=y+alto)) return true;
       else return false;
       
  }
  }