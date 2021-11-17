############################################
#   POR FAVOR, CORRE ESTE SCRIPT EN ORDEN  #
############################################

menuprincipal
seccion<-as.numeric(readline("Elige una sección:"))


#########################################################
#########################################################

if(seccion==1){menu_objetos 
} else if (seccion==2){menu_archivos
}else if (seccion==3){menu_graficas
} else if (seccion==4){print(menu_estadistica)
} else if (seccion==5) {print(menu_programacion)
} else if (seccion==6){print(menu_bash)
} 
