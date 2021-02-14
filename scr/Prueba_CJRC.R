#Elaborado por: Claudia Rodriguez
#Colaborades:
#Fecha de elaboracion: 13/02/2021
#Fecha de ultima modificacion: 13/02/2021

#initial configuration
rm(list = ls()) #limpiar entorno


#install packages
install.packages('pacman')
pacman::p_load(tidyverse,readxl,haven,WriteXLS) #instala los paquetes que no tengo y carga los que si


#tipos de datos

#character
vector_c = c('hola', 'a')
is.character(vector_c)

#logic
vector_l = c(NA,TRUE,FALSE)
is.logical(vector_l)

# númerico
vector_n = c(5,2)
is.numeric(vector_n)


### Vectores ###

# character
char_vec = c("a","b","c","r","d","a","e","c","a","r","r")
char_vec


# logicos
log_vec = c(TRUE, FALSE, T, F)
log_vec

# numericvos
log_num = 1:10
log_num


# elementos no  homogeneos
vector2 = c(1,2,"c") #los convierte todos en strings
str(vector2)

# transformaciones a vectores
vector2 = as.numeric(vector2) # Los elementos que no se pueden transformar en un numero se convierten en NA
str(vector2)


# seleccionar elementos de un vector
char_vec
char_vec[2] # Elemento numero 2
char_vec[1:5] # 5 primeros elementos
char_vec = char_vec[-1] # Eliminar el elemento de la posicion 1 del vector
char_vec
char_vec = char_vec[char_vec != "a"] # Dejar todos los elementos de char_vec diferentes de "a"
char_vec 
!char_vec %in% c("c","r")
char_vec = char_vec[!char_vec %in% c("c","r")] # Eliminar todos los elementos de char_vec que sean diferentes de c y r
char_vec 


## matrices ##

matriz_n = matrix(rnorm(n = 25,mean = 100 ,sd = 10) , nrow = 5, ncol = 5) # Matriz de 5*5



## Importar datos ##
list.files('data/input')

data_csv = read.csv2(file = 'data/input/censo 2018.csv' ,sep = ",", header = T, stringsAsFactors = F) 
data_csv[8:10,]



