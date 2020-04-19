//Ejemplo de pov ray

#include "colors.inc"
#include "textures.inc"
#include "glass_old.inc"

//Camara
camera{
    location <2,3,-2>
    look_at <0,1,0>
        }

//Sol
light_source{<1500,3000,-2500> color White}

//Peon de ajedrez, se utiliza un peon para ver como se comporta la funcion clip en una union
//Se convierte en un solo objeto
union{
//Cabeza del peon
sphere{
    <0,2,0>, .5}
    

//Cuerpo del peon      
cone{ <0,1,0>, .5, <0,2,0>, .25}

    clipped_by {
    cone{ <0,1,0>, .5, <0,2,0>, .25 translate <0,.5,0> inverse }
    
    }

texture{T_Glass3} interior{I_Glass}
    
}

//suelo
plane{ <0,1,0>, 0
       //Madera
       texture{
          DMFWood6
      finish{phong .8}
                }
     }
