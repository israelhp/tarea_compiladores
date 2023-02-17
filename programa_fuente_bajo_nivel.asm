.model small ;se define el modelo me memoria donde indica que se tiene la intesncion de utilizar el modelo de memoria pequeña 
.stack       ;segmento del stack  
.data        ;segmento de datos
    msgprimer  db "Primer mensaje","$" ;string a imprimir 
    msgsegundo db 0Ah,0Dh,"Segundo mensaje","$";string a imprimir

.code        ;segmento de codigo   
   
main proc    ; se crea un procedimiento   
    
 
    mov ax,@data ;se carga a AX la direccion del segmento de datos
    mov ds,ax    ;se mueve la direccion al registro d esegmento por medio de AX 
      
      
    mov dx,offset msgprimer  ; mueve a DX la direccion del string a imprimir 
    mov ah,9                 ; AH = codigo para indicar al MS DOS que imprima en pantalla el string en DS:DX 
    int 21h                  ; llama al MS DOS para ejecutar la funcion (en este caso espesificada en AH)
    
    mov dx,offset msgsegundo ; mueve a DX la direccion del string a imprimir
    mov ah,9                 ; AH = codigo para indicar al MS DOS que imprima en pantalla el string en DS:DX
    int 21h                  ; llama al MS DOS para ejecutar la funcion (en este caso espesificada en AH)
    
    int 20h                  ; llama al MS DOS para finalizar el programa.
main endp    ; indica que termina el procedimiento main 
    
end main ;indica el final del programa
