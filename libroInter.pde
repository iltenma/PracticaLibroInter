// estado de la aplicacion
int estado;
// coleccion de paginas
Pagina [] libro;
Boton up, down;
int nPaginas;
int estadoFinal = 2;


void setup () {
  //inicializar el lienzo
  size (800, 800);
  estado = 0;
  up = new Boton (600, 600, 100, 100, "cuore.jpg");
  down = new Boton (700, 600, 100, 100, "picche.jpg");
  libro = new Pagina [3];
  
  //cargar texto dese fichero de texto
  String [] lineasTexto;
  lineasTexto = loadStrings ("datosBasicos.txt");
  
  for (int i=0; (i<libro.length); i=i+1)
  { String nombreDibujo = "prato.jpg"; 
  //nombreDibujo = nombreDibujo+i;
  //nombreDibujo = nombreDibujo + "prato.jpg";
  println (nombreDibujo);
  libro [i] = new Pagina (lineasTexto [i], nombreDibujo);
  }
}

void draw () {
  background (0);
  libro[estado].dibujar();
  
  switch (estado) {
  case 0:
  up.dibujar(); //does not execute
  break;
  case 1:
  down.dibujar();
  break;
  default:
  up.dibujar();
  down.dibujar();
  break;
  }
}
void mousePressed () {
  if ((up.pertenece(mouseX, mouseY)==true) & (estado!=estadoFinal))
  estado = estado+1;
  else if ((down.pertenece (mouseX, mouseY)==true)&(estado!=0))
  estado = estado-1;
  println ("estado=",estado);
}