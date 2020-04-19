//Ejemplo de pov ray

#include "colors.inc"
#include "textures.inc"

//Camara
camera{
    location <2,3,-2>
    look_at <0,1,0>
        }

//Sol
light_source{<1500,3000,-2500> color White}

//Peon de ajedrez
//Cabeza del peon
sphere{
    <-1,2,0>, .5
    //Cristal azul
    texture{
        pigment{color Blue transmit .8}
        finish{phong .8}}
        interior{ior 2.5}
      }

//Cuerpo del peon      
cone{ <0,1,0>, .5, <0,2,0>, .25
    //Madera
    texture{
        DMFDarkOak
            translate 3*y
    }}

//suelo
plane{ <0,1,0>, 0
       //Madera
       texture{
          DMFWood6
      finish{phong .8}
                }
     }
