###################################################
###################################################
###                                             ###
###            Corre todo este  script          ###
###             para poder comenzar             ###
###              (Ctrl + Alt + r)               ###
###                                             ###
###################################################
###################################################


############MENU PRINCIPAL##########################
cat.principal<-c("Objetos/entrada de datos", " Importar o exportar archivos", "Graficas", 
                 "Analisis estadistico basico", "programacion basica", "Bash") 
num.menump<-c(1:6)
names(num.menump)<-cat.principal
menuprincipal<-as.data.frame(num.menump)
menuprincipal

################Menú sección Objetos/entrada de datos################

objetos <- c("vectores", "Matrices","Dataframes", "Listas", "Serie temporal", "atributos de un objeto")
num.obj<-seq(1.1,1.6,.1) 
names(num.obj)<-objetos
menu_objetos<-as.data.frame(num.obj) 
menu_objetos

###############Menú sección importar o exportar archivos##################

files<-c("Conocer el directorio de trabajo","Cambiar directorio de trabajo","Importar archivo", "Exportar documento")
num.file<-seq(2.1,2.4,.1)
names(num.file)<-files
menu_archivos<-as.data.frame(num.file)
menu_archivos

#####################Menu de seccion graficos########################

graf<-c("Graficos de líneas en R", "Graficos de dispersión",
        "Graficos de pastel", "Graficos de violin",
        "graficos de densidad", "box-plot", "histograma")
num.graf<-seq(3.1,3.7,.1)
names(num.graf)<-graf
menu_graficas<-as.data.frame(num.graf)
menu_graficas



##################Menú de la sección estadística básica############################################

sta<-c("media","media ponderada","moda", "mediana", 
       "max", "min", "desviacion estandar",
       "percentiles","varianza","grados de libertad", "distribución binomial",
       "distribución normal", "t student", "x2", 
       "ANOVA", "ANCOVA", "regresión simple")

num.sta<-seq(4.01,4.17,0.01)
names(num.sta)<-sta
menu_estadistica<-as.data.frame(num.sta)
menu_estadistica

###########Menú de la sección programación básica#############################
prog<-c("estructuras condicionales", "bucles/ciclos for", "funciones")
num.prog<-seq(5.1,5.3,.1)
names(num.prog)<-prog
menu_programacion<-as.data.frame(num.prog)
menu_programacion #imprimí para comprobar
