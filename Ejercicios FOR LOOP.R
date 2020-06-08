### Ejercicios de Repaso de FOR-LOOP ###

## Primer ejercicio: usando FOR, calcular el promedio de notas
## de alumnos.

notasAlumnos <- c(7,6.2,5,3.4,5.6,7,4.8,2.5,2.7,4.5,3.2,6,7,5.4,6)
totalNotas <- 0  

for (notaAlumno in notasAlumnos){
    totalNotas <- totalNotas+notaAlumno 
}
promedioFinal <- totalNotas/length(notasAlumnos)
print(paste("El promedio final de las notas es:", promedioFinal))

## Segundo ejercicio: contando azules y rojos, hacer dos vectores
## que permitan separar las notas rojas y azules, y que cuenten
## estas notas.

# Posibilidad 1 

notasAlumnos <- c(7,6.2,5,3.4,5.6,7,4.8,2.5,2.7,4.5,3.2,6,7,5.4,6)

totalNotas <- 0
notasRojas <- 0 
notasAzules <- 0 

for (notaIndividual in notasAlumnos) {
  
  totalNotas <- totalNotas+notaIndividual
  if(notaIndividual > 3.9){
     notasAzules <- notasAzules+1
     print(notasAzules)  
     
  } else{
    notasRojas <- notasRojas+1
    print(notasRojas)
  }
}

promedioFinal <- totalNotas/length(notasAlumnos)
print(paste("El promedio final de las notas es:", promedioFinal))
print(paste(" Notas azules:", notasAzules))
print(paste(" Notas rojas:", notasRojas))

## Tercer ejercicio: ordenar las notas de mayor a menor 
length(notasAlumnos)

for(cantidadDeVecesARecorrer in 1: length(notasAlumnos)){
  for (posicionNota in 1: length(notasAlumnos)-1) {
    if (notasAlumnos[posicionNota]<notasAlumnos[posicionNota]+1)
      

      
  }    

}
  
  






