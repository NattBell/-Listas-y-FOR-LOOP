rm(list = ls () )

## Ejercicio 1: 
  

listaDeNumeros <- list(2,5,6,2,1,5,6,10,11,20,15)
listaDeNumeros [5]
unlist(listaDeNumeros)

# En la posicion 5 esta el numero 1

## ¿Qué pasa si reemplazamos el 5 por un 0?

listaDeNumeros [0]

# la consola arroja: list (); lo que significa que el "0" no existe
# dentro de la lista

## ¿Qué pasa si en vez de poner un número positivo,
## menor igual al largo de la lista, colocamos un 

listaDeNumeros [11]

# En la posicion 11 esta el numero 15

## número mayor a la cantidad de elementos de la lista o un número negativo?

listaDeNumeros [12]

# La consola arroja que es nulo 

# Ejercicio 2: A continuación se le presenta la función unlist, 
# la cual se puede usar de la siguiente manera: unlist(listaDeNumeros[5]) 
# ¿Qué diferencia existe entre usar o no el unlist, 
# y cómo cree ud que le podría ayudar esta función?,
# pista: experimente usando el condicional if, use estos como ejemplo: 
  
listaDeNumeros[5]
unlist(listaDeNumeros[5])

if(listaDeNumeros[5]+1>0){
  print((listaDeNumeros[5])+ 1)
}

if (unlist(listaDeNumeros[5])+1>0){
  print("se cumple")
}

# ¿Qué diferencia existe entre usar o no el unlist?
# gracias al unlist se puede hacer operaciones matematicas, ya que
# al ejecutar "if(listaDeNumeros[5]+1>0)" en consola indica:
# argumento no-numérico para operador binario, mientras que al 
# ejecutar en "if (unlist(listaDeNumeros[5])+1>0)", la consola arroja
# el resultado y no lo toma como error.

#otro ejemplo 

listaDeNumeros[7]
unlist(listaDeNumeros[7])

if(listaDeNumeros[7]-3 == 3){
  print("se cumple")
}

if(unlist(listaDeNumeros[7])-3 == 3){
  print("se cumple")
}

## Ejercicio 3: ¿Qué pasa cuando realizamos 
## la siguiente acción: listaDeNumeros[5] <- 12? 

listaDeNumeros[5] <- 12

# no pasa nada 

# Ejercicio 4: Existe una función llamada length,
# esta se usa de la siguiente manera: length(nombre_variable), 
# ¿por qué debería ser cambiado nombre_variable
# para que funcione con el ejemplo que estamos 
# trabajando (listaDeNumeros)? ¿qué da como resultado? 

length(listaDeNumeros)

# se debe cambiar, porque se debe llamar a la lista 
# que se esta utilizando y asi arroje el largo de la lista.

# Da como resultado [1] 11, indica que la lista creada contiene
# 11 datos 

## Ejercicio 5: Para generar secuencias se tiene un valor inicial
## y un valor final, donde ambos valores son enteros,
## para el ejemplo, y la sintaxis en R es la siguiente:  
  
valorInicial : valorFinal

valorInicial <- 5
valorFinal <- 20


# La secuencia comienza desde el numero 5 y termina en el numero 20
# ([1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20)

# ¿Que sucede cuando valorInicial <- 5 y valorFinal <- 20, 
# si ahora los invertimos, valorInicial <- 20 y valorFinal <- 5,

valorInicial <- 20
valorFinal <- 5
valorInicial : valorFinal

# La secuencia comienza desde el numero 20 y termina en el numero 5
#  [1] 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5

# y si ahora usamos el length visto en el ejercicio 3, 
# length(listaDeNumeros), en vez de valorInicial o valorFinal?

length(valorInicial : valorFinal)
# Indica que la cantidad de datos de la lista es de: [1] 16

# ¿Que pasa si ambos números son iguales? 

valorInicial <- 5
valorFinal <- 5
valorInicial : valorFinal
length(valorInicial : valorFinal)

# Si ambos numeros son iguales significa que solo hay un dato,
# cuyo valor es el indicado en la variable valorInicial/valorFinal

## Ejercicio 6: Ejecute el ejemplo anterior y comente
## ¿Cuál es la condición establecida en el for, 
## según el resultado que muestra la  consola? 

for (i in 1:100) {
   print(paste("cuento",i,"misisipis"))
}

# Entrega un listado desde el valor inicial (1)
# hasta el valor final(100) en donde "i" toma el valor de n

## Ejercicio 7: Adapte el código anterior para que 
## imprima los elementos de la lista que se creó anteriormente.

for (i in listaDeNumeros) {
  print(paste("cuento",i,"misisipis"))
}

## Ejercicio 8: Usando los condicionales vistas en clases, adapte 
## el código anterior para que muestre si un número es par o impar. 

numeroPar -> TRUE
numeroImpar -> FALSE

for (i in listaDeNumeros) {
}
 numeroPar <- function (listaDeNumeros){
  return(listaDeNumeros%%2==0)
  print(numeroPar)
}
numeroPar(unlist(listaDeNumeros))
unlist(listaDeNumeros)

listadoNumeroParEimpar <- c(numeroPar(unlist(listaDeNumeros)),listaDeNumeros)
listadoNumeroParEimpar

## Ejercicio 9: Como vimos en clases anteriores  el uso de condicionales 
## es útil para tomar decisiones respecto a ciertas opciones que se presentan,
## para practicar esta metodología se le pida que resuelva el 
## siguiente ejercicio. 

## Suponga que existe un sistema de plebiscitos (resultado SI o NO) 
## con las siguientes reglas: 
## - El padrón electoral consiste de total personas (número entero). 
## - Hay dos opciones de voto: SI o NO. La cantidad de votos se representan 
## con las variables votosSI y votosNO (números enteros). 
## - Considerando que el quórum corresponde al 50% + 1 del padrón electoral: 
##  ??? Si hay menos votos que el quórum, pero una de las opciones (SI o NO) 
## tiene una votación mayor o igual al 30%, gana dicha opción. Si no, 
## no hay quórum y gana la opción NO. 
##  ??? Si hay suficientes votos para el quórum, gana la opción con más votos.
## En caso de empate, gana la opción SI. 
## - Suponga que no hay votos blancos o nulos.
## Implemente una función que reciba los parámetros total, 
## votosSI y votosNO, y devuelva un String con la opción ganadora 
## ('SI' o 'NO'). No olvide seguir todos los pasos de la receta de diseño. 

votosSi <- 40
votosNo <- 30
padronElectoral <- 136
quorum <- 69

resultadoDeVotacion <- if (quorum < 69){
                       opcion <- 
                       print(opcion)
                       }else if (votosSi >= 41 || votosNo >= 41){
                       opcion <- 
                       print(opcion)
  
                       } else { (quorum < 69)
                       opcion <- votosNo
                       print(paste("gana la opcion",opcion))
                       
    }else if (quorum > 69){
      print(paste("gana la opcion",opcion))
                         
    }else{ 
      print(paste("gana la opcion",opcion))
      
      }
   
     
                       
      else (vosotsSI == votosNo)
    opcion <- votosSi
    print(paste("gana la opcion",opcion))
   
   
 

## Ejercicio 10: Una función es un grupo de instrucciones que 
## toma valores de entradas para generar un resultado.
## Por ejemplo, si se crea una función que sume dos elementos,
## a y b, de la siguiente manera: 
  
Suma<-function(a,b){      
    a+b 
} 

## Y luego de esto ejecute lo siguiente en R: 
  
Suma(3,4) 

# ¿Qué resultado genera? 

## El resultado es 7

## Pruébelo con operaciones resta,multiplicación, división
  
resta <- function (a,b){
  a-b
}

resta (3,4)

# El resultado es -1

multiplicacion <- function(a,b){
  a*b
}

multiplicacion(3,4)

# El resultado es 12

division <- function(a,b){
  a/b
}

division (3,4)

# El resultado es 0.75

## Ejercicio 11: Cree dos funciones, una que genere 
## la diferencia entre las áreas de dos rectángulos
## (área sombreada figura 1) 

diferenciaAreasRectangulo <- function(lado1rec1,lado2rec1,lado1rec2,lado2rec2){
  
   restarAreasRectangulo <-  abs(lado1rec1*lado2rec1-lado1rec2*lado2rec2)
   return(restarAreasRectangulo)
}
 
diferenciaAreasRectangulo (7,15,5,15) 


## y otra de las diferencias de las áreas de un círculo
# Circulo1
# pi = 3,14 
# r = 2

# Circulo2
# pi = 3,14
# r = 3

diferenciaAreasCirculo <- function(pi1,r1,pi2,r2){
  
  restarAreasCirculo <- abs(pi1*r1**2-pi2*r2**2)
  return(restarAreasCirculo)
  
}

diferenciaAreasCirculo (3.14,2,3.14,3)


## Ejercicio 12: Ejecute el siguiente código y diga cuales 
## son las ventajas y desventajas de hacer un loop con lista
## o rango 

for( i in listaDeNumeros){   
 print(i) 
} 



























