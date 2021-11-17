
#MARÍA JOSÉ HERNÁNDEZ DE SANTOS EXP 290144

#Para comenzar, elaborare un vector con las secciones que podrás consultar en quiúbole con R
#apartir de este podré dirigirme a temas que correspondan con cada sección 

#comenzaré por elaborar el menú principal, que consta de 6 categorías

#Creé un vector con las 6 secciones principales
cat.principal<-c("Objetos/entrada de datos", " Importar o exportar archivos", "Graficas", 
"Analisis estadistico basico", "programacion basica", "Bash") 
num.menump<-c(1:6)# esta es la opcion asignada a cada seccion
names(num.menump)<-cat.principal#hice una asociación entre los vectores
menuprincipal<-as.data.frame(num.menump)#generé un data frame a partir del vector anterior 
menuprincipal#imprimí el menuprincipal


######################################################################################################################
######################Lineas interactivas###########################################################################################
######################################################################################################################
#ahora de una vez hago la línea interactiva que permite seleccionar una sección del menú principal
seccion<-as.numeric(readline("Elige una sección:")) #esta es una línea interactiva,
#as.numeric hace referencia a que sólo extraiga los números de esa línea, es decir, que ignore las letras

#esta es la línea interactiva del tema que se eligió a partir de la sección
tema<-as.numeric(readline("¿Qué tema te gustaría consultar:")) #al igual que la otra línea, al correrla, en la consola 
#aparecerá la pregunta, y al ingresar el número correspondiente, el objeto tomará ese valor.
  
######################################################################################################################



##############################
####Creación de submenus######
##############################
#ahora, apartir de cada sección se desprendé
#un menú secundario con los temas disponibles
#para consulta sobre esa sección.

################Menú sección Objetos/entrada de datos################

#un vector con los nombres de los temas de la sección objetos/entrada de datos
objetos <- c("vectores", "Matrices","Dataframes", "Listas", "Serie temporal", "atributos de un objeto")
num.obj<-seq(1.1,1.6,.1) 
#un vector numérico con una secuencia de números 
#del 1.1 al 1.6 de 0.1 en 0.1
names(num.obj)<-objetos
#asocié los temas con las opciones en el vector num.obj
menu_objetos<-as.data.frame(num.obj) #cree un data frame a partir del vector anterior
menu_objetos#este es mi menú de la sección objetos/entrada de datos



###############Menú sección importar o exportar archivos##################

#un vector de nombres de los temas de la sección
files<-c("Conocer el directorio de trabajo","Cambiar directorio de trabajo","Importar archivo", "Exportar documento")
num.file<-seq(2.1,2.4,.1)
#una secuencia numérica guardada en un vector que se asocia a los nombre
names(num.file)<-files
#asocié los nombres de las categorías y la opción de cada una.
menu_archivos<-as.data.frame(num.file)
#el menu de exportación e importación de datos es un dataframe
menu_archivos#imprimo el menú para comprobar



#####################Menu de seccion graficos########################

graf<-c("Graficos de líneas en R", "Graficos de dispersión",
        "Graficos de pastel", "Graficos de violin",
        "graficos de densidad", "box-plot", "histograma")
num.graf<-seq(3.1,3.7,.1)
names(num.graf)<-graf#asocié los nombres de las categorías y la opción de cada una
menu_graficas<-as.data.frame(num.graf)#el menú de las gráficas es un dataframe ahora
menu_graficas#imprimi el menu para comprobar



##################Menú de la sección estadística básica############################################

#elaboré un vector con los nombres de la sección estadística básica
sta<-c("media","media ponderada","moda", "mediana", 
       "max", "min", "desviacion estandar",
       "percentiles","varianza","grados de libertad", "distribución binomial",
       "distribución normal", "t student", "x2", 
       "ANOVA", "ANCOVA", "regresión simple")

#un vector que contiene una secuencia numérica correspondiente
#a las opciones de cada tema de la sección de estadística
num.sta<-seq(4.01,4.17,0.01)

#asocie las categorías del submenú con su numero de opcion
names(num.sta)<-sta

menu_estadistica<-as.data.frame(num.sta)#ahora el menu es un data frame
menu_estadistica#imprimí para revisar

###########Menú de la sección programación básica#############################
#generá un vector de nombres de los temas de la sección
#de programación básica
prog<-c("estructuras condicionales", "bucles/ciclos for", "funciones")

#un vector que contiene una secuencia numérica con números
#correspondientes a la opción que lleva a cada tema de esta sección
num.prog<-seq(5.1,5.3,.1)

#asocié ambos vectores para que cada tema tenga su opción
names(num.prog)<-prog

#generé el menú apartir de la interpretación del vector anterior como data frame
menu_programacion<-as.data.frame(num.prog)#ahora el menu es un data frame
menu_programacion #imprimí para comprobar



####################Menú de comandos básicos de Bash####################################
#genera un vector a partir de los nombres de los temas de la sección
#de comandos básicos de bash
bash<-c("directorio en el que se trabaja", "montar unidad c","ir a home", "listar contenido", 
        "cambiar de directorio", "crear un directorio", "hacer una copia", "mover un archivo", "remover un archivo", "editar un documento",
        "limpiar pantalla", "concatenar", "ver primeras lineas de un documento",
        "ver ultimas lineas de un documento", "buscar un patrón en un documento", "Contar palabras en un texto",
        "redireccionar salida", "comodines", "pipes", "comprimir", "remplazar palabras")

#un vector con una secuencia numérica del 6.01 al 6.21
#de 0.01 en 0.01. Estos números corresponden a la opción de 
#cada tema
num.bash<-seq(6.01,6.21,0.01)
#asocié ambos vectores
names(num.bash)<-bash
#generé el menú a partir del vector anterior interpretado como data frame
menu_bash<-as.data.frame(num.bash)
menu_bash# imprimí el menú para revisarlo




######################################################################################################
######################################################################################################
##                                                                                                  ##           
##          CONDICIONALES PARA EJECUTAR EL PROGRAMA                                                 ##
##                                                                                                  ##
######################################################################################################
######################################################################################################


#A PARTIR DE LA OPCIÓN SELECCIONADA CORRESPONDIENTE AL MENÚ PRINCIPAL,
#LLÉVAME AL MENÚ DE LA SECCIÓN QUE ELEGÍ.

#Sección es el vector que resulta de la interpretación numérica de la
#Respuesta a la indicacion "Elige una sección:"

if(seccion==1){menu_objetos 
  # si se eligío la sección 1, imprime el menú de objetos
} else if (seccion==2){menu_archivos
  #más si se eligió la sección 2, imprimé el menú de exportar e importar archivos
}else if (seccion==3){menu_graficas
  #más si se eligió la sección 3, imprime el menú de gráficas
} else if (seccion==4){print(menu_estadistica)
  #más si se eligió la sección 4, imprime el menú de estadística
} else if (seccion==5) {print(menu_programacion)
  # pero si se eligió la sección 5, imprime el menú de programación
} else if (seccion==6){print(menu_bash)} 
  #más si se eligió la sección 6, imprime el menú de bash


###################################################################
#A PARTIR DEL TEMA QUE SELECCIONÉ, LLÉVAME AL MATERIAL DIDÁCTICO###
###################################################################

#tema es el vector que resulta de la interpretación numérica de la
#respuesta a la pregunta "¿Qué tema te gustaría consultar?
#dependiendo de la opción que se introduzca, en la consola se imprimirá
#un código url que te llevará a la visualización de un Rmarkdown
#en formato PDF sobre el tema.


# la estructura es condicional; si el valor de tema es x, 
#entonces imprime este URL
#Pero si el tema es y, imprime este URL. 

if(tema==1.1){"https://drive.google.com/file/d/12bSJeaD4ce7_kQQYLrjwjRZPJkKv3uVI/view?usp=sharing"
}else if(tema==1.2){"https://drive.google.com/file/d/1PyMfCQaeAEGdKzCYSfmqQxDtADhsOORe/view?usp=sharing"
}else if (tema==1.3){"https://drive.google.com/file/d/1zwEnA8TPkXNJGoJjpft4eQ28-CDzPOzQ/view?usp=sharing"
}else if(tema==1.4){"https://drive.google.com/file/d/1fIY7yAa6pyeZtH0yKRfIu36XTBbr6FoV/view?usp=sharing"
}else if (tema==1.5){"https://drive.google.com/file/d/140B-LBUN364CP6YvY8kFyt1cyb0SBzBI/view?usp=sharing"
}else if (tema==1.6){"https://drive.google.com/file/d/1ULw4Yhpb1WCkjfNQ3I_CAIOcsLjJzUtT/view?usp=sharing"
}else if (tema==2.1){"https://drive.google.com/file/d/1uyX_wccaH3YyP4ozpv2_upjAX3kOCseS/view?usp=sharing"
}else if (tema==2.2){"https://drive.google.com/file/d/1X2_kKtzst44H_0b6dKuclyx7pv_JXIWm/view?usp=sharing"
}else if (tema==2.3){"https://drive.google.com/file/d/19dyHDX_R_c0a5dG0axQ8Y-Iy5x5VHUbU/view?usp=sharing"
}else if (tema==2.4){"https://drive.google.com/file/d/1_JAGHjpmFVxtJ8bKoSi7V2gJASlb52Nv/view?usp=sharing"
}else if (tema==3.1){"https://drive.google.com/file/d/1XMsxnRe60EmjDbFKAGSRG5jtzMfbyBqR/view?usp=sharing"
}else if (tema==3.2){"https://drive.google.com/file/d/1wJfenSib0u3fb07DcaXicNPcuzcyCwt-/view?usp=sharing"
}else if (tema==3.3){"https://drive.google.com/file/d/1g2uUzHBs2EnzgUnivJCO8dGO-YQvUTrV/view?usp=sharing"
}else if (tema==3.4){"https://drive.google.com/file/d/1s-0JUiEYEGi1pvdqlDIhK5NeAxtpIERJ/view?usp=sharing"
}else if (tema==3.5){"https://drive.google.com/file/d/1wZr300jNNc9iSVB2S5o6Gi6Zwx5nukxS/view?usp=sharing2222"
}else if (tema==3.6){"https://drive.google.com/file/d/1qd7waWJ5IyLIiidtEHic-vTCVUWovAqY/view?usp=sharing"
}else if (tema==3.7){"https://drive.google.com/file/d/1fwiehK891JVOn_HvrdcdVp8DgFPAIEGd/view?usp=sharing"
}else if (tema==4.01){"https://drive.google.com/file/d/1O3lB_bucoxmZTKsOI8f-2ovNCJ_sXBvq/view?usp=sharing"
}else if (tema==4.02){"https://drive.google.com/file/d/1S-fUCr0UXzwtkqXhTpEkPQ8-F5P6BUQ3/view?usp=sharing"
}else if (tema==4.03){"https://drive.google.com/file/d/1yRA9deudOMswScVuK0afcoQxPweVGAYV/view?usp=sharing"
}else if (tema==4.04){"https://drive.google.com/file/d/1vjltKrCDB3FItuBiANpryKB1LzxRXSLq/view?usp=sharing"
}else if (tema==4.05){"https://drive.google.com/file/d/1DurGoabdmORFMqao-FRXTzeVkxwiYaYk/view?usp=sharing"
}else if (tema==4.06){"https://drive.google.com/file/d/1A0sv87Wo7F4vOcSEDb_pcryBWm7hTjeA/view?usp=sharing"
}else if (tema==4.07){"https://drive.google.com/file/d/1NWTqOkMCF7k-kPHLnZnUx6FR_GKnJGKP/view?usp=sharing"
}else if (tema==4.08){"https://drive.google.com/file/d/10p-DWqChbqx-JWHa--l5DLyMUMMKEhXx/view?usp=sharing"
}else if (tema==4.09){"https://drive.google.com/file/d/1iCAP1MJ0I9MnBojuD0w9qGmvl525yAWd/view?usp=sharing"
}else if (tema==4.10){"https://drive.google.com/file/d/10t9-kF1d4QGWtUifVb62wPIddnVDRNqC/view?usp=sharing"
}else if (tema==4.11){"https://drive.google.com/file/d/1ep4R9GfpurbVoBRQ5M3pX_hifusmBUpC/view?usp=sharing"
}else if (tema==4.12){"https://drive.google.com/file/d/1v_zCsF1q5cLlXzt0vPKOXvPB3sRiBUDY/view?usp=sharing"
}else if (tema==4.13){"https://drive.google.com/file/d/1O2f8qyVbIah0RWQwmmTF7osI8tzYp2Sf/view?usp=sharing"
}else if (tema==4.14){"https://drive.google.com/file/d/1_yrLJuzhx-Wk6VxRgFck4sanSePlC3NG/view?usp=sharing"
}else if (tema==4.15){"https://drive.google.com/file/d/13AzHpg4Tx3Zor8lWRHofIHuyzoYjAiNo/view?usp=sharing"
}else if (tema==4.16){"https://drive.google.com/file/d/1II3jm3lu9u5R7VZS6j0hhpLU8ZmZ7iBZ/view?usp=sharing"
}else if (tema==4.17){"https://drive.google.com/file/d/1MAIQEUkjsO2RWR2P2JalrwemDHoQLy4g/view?usp=sharing"
}else if (tema==5.1){"https://drive.google.com/file/d/1aoVmFrKB0LmRfkMN6LU6x53Hk66srIS9/view?usp=sharing"
}else if (tema==5.2){"https://drive.google.com/file/d/183-E1cXcyB1Xnmw2r_6W4pn9WqNqeZrf/view?usp=sharing"
}else if (tema==5.3){"https://drive.google.com/file/d/1gxb4osUOOfYrjVnsH9SVfs_hXnvXMDT0/view?usp=sharing"
}else if (tema==6.01){"https://drive.google.com/file/d/1F06gLze9aqi-YGn_W0mUFRqtFKX4M1VF/view?usp=sharing" 
}else if (tema==6.02){"https://drive.google.com/file/d/1uAt-A3za6NMXww1MyNagfh4ZS6K3pgOi/view?usp=sharing"  
}else if (tema==6.03){"https://drive.google.com/file/d/1sHbKwmr5MhdIAfIrUILwsCOrU6o7xCLL/view?usp=sharing"  
}else if (tema==6.04){"https://drive.google.com/file/d/17etRJwVcXdd3neM33Giu0ZfQfWHbhiKS/view?usp=sharing"  
}else if (tema==6.05){"https://drive.google.com/file/d/1zEJAocvZNu0Q_vQWCoZ5DY7mekTXo7Gg/view?usp=sharing"  
}else if (tema==6.06){"https://drive.google.com/file/d/1AaCR853RTxsFRgToEtCH0_jkQxy_p2wm/view?usp=sharing"  
}else if (tema==6.07){"https://drive.google.com/file/d/19ZBhSDpPrAJwqsb5xkVnv07Ps6ayaTO-/view?usp=sharing"  
}else if (tema==6.08){"https://drive.google.com/file/d/1RSGtYMf4cj96A5Q4L392P22ng4VDl4Vr/view?usp=sharing"  
}else if (tema==6.09){"https://drive.google.com/file/d/1H54Sv3ZlcKhjKaUIC8mWWjg_WpZQxWPj/view?usp=sharing"  
}else if (tema==6.10){"https://drive.google.com/file/d/1nGIvk77X_JarfczJs4t72iLf1v51Dz0X/view?usp=sharing"
}else if (tema==6.11){"https://drive.google.com/file/d/1ys9SV2a_O02EwGALURxpT8Yx3uq7neQ4/view?usp=sharing"  
}else if (tema==6.12){"https://drive.google.com/file/d/1OWWyJH3-N4n8gCJUn6eerijQhbQRkZC-/view?usp=sharing"
}else if (tema==6.13){"https://drive.google.com/file/d/1gVK-ozro-i0a36UIzut_abD_KyIFTB9i/view?usp=sharing"  
}else if (tema==6.14){"https://drive.google.com/file/d/1aV9XSvYWciNQWEuNXnCMlN0IWelzWZXl/view?usp=sharing"  
}else if (tema==6.15){"https://drive.google.com/file/d/1N4WeVaL1h-sM-cpV_QDegEYgWh5-_LUV/view?usp=sharing"  
}else if (tema==6.16){"https://drive.google.com/file/d/1O8sCJgHgdywRs2F5lCuf1j4VQ74QWeLp/view?usp=sharing"  
}else if (tema==6.17){"https://drive.google.com/file/d/1Ch8ebCU3dZ0d6NS-5yuBhl51VPoLiPwq/view?usp=sharing"  
}else if (tema==6.18){"https://drive.google.com/file/d/1pP0gGBx67p1b-MXTgB-SBQEQb3UhCoH7/view?usp=sharing"  
}else if (tema==6.19){"https://drive.google.com/file/d/1NR_3RvxMYL9td0y9uQ-kIxVF5TO4P9o4/view?usp=sharing"
}else if (tema==6.20){"https://drive.google.com/file/d/1glEaoEF5bt8ZI1SbppSTJ8-IK6AZEWIJ/view?usp=sharing"  
}else if (tema==6.21){"https://drive.google.com/drive/folders/1bAr9DH3LwpF_8e6YBtDZYzRkUrfWqN-E?usp=sharing"  
}



 
