mPrint macro variable
    mov dx, offset variable
    mov ah, 09h
    int 21h
endm

; Macro para limpiar un databyte
limpiar_databyte macro direccion, longitud
  mov si, direccion ; Cargamos la dirección en el registro SI
  mov cx, longitud ; Cargamos la longitud de la cadena en el registro CX
  mov al, 0 ; Valor cero para limpiar el databyte
  
  limpiar_loop:
    mov byte ptr [si], al ; Establecer el databyte en cero
    inc si ; Mover al siguiente byte
    loop limpiar_loop ; Repetir hasta que se haya recorrido toda la cadena
endm