include funcs.asm
NADA        equ      00
JUGADOR     equ      01
PARED       equ      02
CAJA        equ      03
OBJETIVO    equ      04
SUELO       equ      05
CAJAOBJETIVO equ     06	
.MODEL SMALL
.RADIX 16
.STACK
.DATA
dim_sprite_jug    db   08, 08
data_sprite_jug   db   5c, 5c, 5c, 04, 04, 04, 5c, 5c
                           db   5c, 5c, 5c, 54, 54, 5c, 5c, 5c
                           db   5c, 5c, 02, 02, 02, 02, 5c, 5c
                           db   5c, 54, 5c, 02, 02, 5c, 54, 5c
                           db   5c, 5c, 5c, 09, 09, 5c, 5c, 5c
                           db   5c, 5c, 5c, 09, 09, 5c, 5c, 5c
                           db   5c, 5c, 54, 5c, 5c, 54, 5c, 5c
                           db   5c, 00, 00, 5c, 5c, 00, 00, 5c
dim_sprite_flcha  db   08, 08
data_sprite_flcha   db   00, 00, 8F, 00, 00, 00, 00, 00
                              db   00, 00, 8F, 8F, 00, 00, 00, 00
                              db   8F, 8F, 8F, 8F, 8F, 00, 00, 00
                              db   8F, 8F, 8F, 8F, 8F, 8F, 00, 00
                              db   8F, 8F, 8F, 8F, 8F, 8F, 00, 00
                              db   8F, 8F, 8F, 8F, 8F, 00, 00, 00
                              db   00, 00, 8F, 8F, 00, 00, 00, 00
                              db   00, 00, 8F, 00, 00, 00, 00, 00
dim_sprite_vacio  db   08, 08
data_sprite_vacio db   00, 00, 00, 00, 00, 00, 00, 00
                            db   00, 00, 00, 00, 00, 00, 00, 00
                            db   00, 00, 00, 00, 00, 00, 00, 00
                            db   00, 00, 00, 00, 00, 00, 00, 00
                            db   00, 00, 00, 00, 00, 00, 00, 00
                            db   00, 00, 00, 00, 00, 00, 00, 00
                            db   00, 00, 00, 00, 00, 00, 00, 00
                            db   00, 00, 00, 00, 00, 00, 00, 00
dim_sprite_suelo  db   08, 08
data_sprite_suelo db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                             db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                             db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                             db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                             db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                             db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                             db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                             db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
dim_sprite_pared  db   08, 08
data_sprite_pared db   6,6,0,0,0,6,6,6 
                             db   0,0,0,0,0,0,0,0
                             db   6,6,6,0,0,6,6,6
                             db   6,6,6,0,0,6,6,6
                             db   6,6,6,0,0,6,6,6
                             db   0,0,0,0,0,0,0,0
                             db   6,6,6,0,0,6,6,6
                             db   0,0,0,0,0,0,0,0 
dim_sprite_caja   db   08, 08
data_sprite_caja  db  5c,5c,5c,5c,5c,5c,5c,5c
                           db  5c,5c,30,30,30,30,5c,5c
                           db  5c,30,2,2,2,2,30,5c
                           db  5c,30,2,2,2,2,30,5c
                           db  5c,30,2,2,2,2,30,5c
                           db  5c,30,2,2,2,2,30,5c
                           db  5c,5c,30,30,30,30,5c,5c
                           db  5c,5c,5c,5c,5c,5c,5c,5c
dim_sprite_obj    db   08, 08
data_sprite_obj   db  0,2A,2A,2A,2A,2A,2A,2A
                           db  2A,0E,0E,0E,0E,0E,0E,0E
                           db  2A,0E,0E,2A,2A,0E,0E,0E
                           db  2A,0E,2A,0E,0E,2A,0E,0E
                           db  2A,0E,2A,0E,0E,2A,0E,0E
                           db  2A,0E,0E,0E,2A,0E,0E,0E
                           db  2A,0E,0E,0E,0E,0E,0E,0E
                           db  2A,0E,0E,0E,2A,0E,0E,0E

dim_sprite_mario    db   08, 08
data_sprite_mario   db 5C,28,28,28,28,5C,5C,5C
                                db 28,28,28,28,28,28,5C,5C
                                db 6,59,59,59,59,5C,5C,5C
                                db 59,59,0,0,59,59,5C,5C
                                db 6,59,59,0,0,5C,5C,5C
                                db 28,37,28,37,28,5C,5C,5C
                                db 5C,37,37,37,5C,5C,5C,5C
                                db 6,6,5C,6,6,5C,5C,5C
prompt_abajo db "Tecla ABAJO$"
prompt_derecha db "Tecla DERECHA$"
prompt_izquierda db "Tecla IZQUIERDA$"
prompt_arriba db "Tecla ARRIBA$"
mapa              db   3e8 dup (0)
iniciar_juego db "INICIAR JUEGO$"
cargar_nivel  db "CARGAR NIVEL$"
configuracion db "CONFIGURACION$"
puntajes      db "PUNTAJES ALTOS$"
salir         db "SALIR$"
iniciales     db "JRGR - 202000895$"
nombre     db "Josue R. Gramajo R. - 202000895$"
curso     db "[ACE1] - PY2$"
newline db 0Ah, '$' ; Carácter de nueva línea
configTitulo     db "  Controles actuales$"
arribaTitulo     db "Arriba:$"
abajoTitulo     db "Abajo:$"
izqTitulo          db "Izquierda:$"
derechaTitulo     db "Derecha:$"
cambiarControlTitle     db "  Cambiar  Controles$"
back     db "   Regresar$"
exitPause     db "  E X I T$"
contadorWin db 0;ove_up


stringcontrol_abajo     db "$"
stringcontrol_derecha     db "$"
stringcontrol_izquierda     db "$"
longitud_cadena equ $-stringcontrol_izquierda
stringcontrol_arriba     db "$"

;; JUEGO
xJugador      db 2
yJugador      db 2
puntos        dw 0
flagHayX db 0
contNivelitos db 0
;; MENÚS
opcion        db 0
maximo        db 0
xFlecha       dw 0
yFlecha       dw 0
;; CONTROLES
control_arriba    db  48
control_abajo     db  50
control_izquierda db  4b
control_derecha   db  4d

str_control_arriba db "W",0ah,"$"
; mov str_control_arriba[0] , AL
;; NIVELES
nivel_x           db  "./NIV.00",00
handle_nivel      dw  0000
linea             db  100 dup (0)
elemento_actual   db  0
xElemento         db  0
yElemento         db  0
;; TOKENS
tk_pared      db  05,"pared"
tk_suelo      db  05,"suelo"
tk_jugador    db  07,"jugador"
tk_caja       db  04,"caja"
tk_objetivo   db  08,"objetivo"
tk_coma       db  01,","
;;
numero        db  5 dup (30)
.CODE
.STARTUP
inicio:
    ;; MODO VIDEO ;;
		mov AH, 00
		mov AL, 13
		int 10 
        mov DL, 05
        mov DH, 09
        mov BH, 00
        mov AH, 02
        int 10 

        mPrint nombre  
        mov DL, 05
        mov DH, 11
        mov BH, 00
        mov AH, 02
        int 10
        mPrint curso
        ; haciendo un for para un delay algo largo
        xor si, si 
        cfor:
            cmp si, 0C
            je exitfor
            call delay 
            inc si
            jmp cfor 
        exitfor:
		;;;;;;;;;;;;;;;;
		call menu_principal

	check:

		mov AL, [opcion]
		;; > INICIAR JUEGO
		cmp AL, 0
		je cargar_un_nivel
		;; > CARGAR NIVEL
		cmp AL, 1
		je cargar_un_nivel
		;; > menuConfig
		cmp AL, 3
		je callmenuConfig
		;; > CONFIGURACION
		;; > PUNTAJES ALTOS
		;; > SALIR
		cmp AL, 4
		je fin

		;;;;;;;;;;;;;;;;
ciclo_juego:
		call pintar_mapa
		call entrada_juego
		jmp ciclo_juego
		;;;;;;;;;;;;;;;;

cargar_un_nivel:
		mov AL, 00
		mov DX, offset nivel_x
		mov AH, 3d
		int 21
		jc inicio
		mov [handle_nivel], AX
		;;
ciclo_lineas:
		mov BX, [handle_nivel]
		call siguiente_linea
		cmp DL, 0ff      ;; fin-del-archivo?
		je fin_parseo
		cmp DH, 00      ;; línea-con-algo?
		je ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
		;; lógica del parseo ;;
		;;;;;;;;;;;;;;;;;;;;;;;
		;; al principio del buffer de la línea está: pared, caja, jugador, suelo, objetivo
		mov DI, offset linea
		push DI
		mov SI, offset tk_pared
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_pared
		pop DI
		push DI
		mov SI, offset tk_caja
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_caja
		pop DI
		push DI
		mov SI, offset tk_suelo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_suelo
		pop DI
		push DI
		mov SI, offset tk_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_objetivo
		pop DI
		push DI
		mov SI, offset tk_jugador
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_jugador
		pop DI
		jmp ciclo_lineas
es_pared:
		mov AL, PARED
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_caja:
		mov AL, CAJA
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_suelo:
		mov AL, SUELO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_objetivo:
		inc contadorWin ; aumento las 
		mov AL, OBJETIVO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_jugador:
		mov AL, JUGADOR
		mov [elemento_actual], AL
		jmp continuar_parseo0
		;; ignorar espacios
continuar_parseo0:
		pop SI         ; ignorara valor inicial de DI
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [xElemento], AL
		pop DI
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		je continuar_parseo1
		cmp AL, ','
		je continuar_parseo2
		jmp ciclo_lineas
continuar_parseo1:
		;; ignorar espacios
		call ignorar_espacios
continuar_parseo2:
		;; obtener una coma
		mov SI, offset tk_coma
		call cadena_igual
		cmp DL, 0ff
		jne ciclo_lineas
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [yElemento], AL
		pop DI
		;; ignorar_espacios
		mov AL, [DI]
		cmp AL, 20
		jne ver_final_de_linea
		call ignorar_espacios
		;; ver si es el final de la cadena
ver_final_de_linea:
		mov AL, [DI]
		cmp AL, 00
		jne ciclo_lineas
		;; usar la información
		;;
		mov DL, [elemento_actual]
		mov AH, [xElemento]
		mov AL, [yElemento]
		call colocar_en_mapa
		mov AL, JUGADOR
		cmp AL, [elemento_actual]
		je guardar_coordenadas_jugador
		jmp ciclo_lineas
guardar_coordenadas_jugador:
		mov AH, [xElemento]
		mov AL, [yElemento]
		mov [xJugador], AH
		mov [yJugador], AL
		jmp ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
fin_parseo:
		;; cerrar archivo
		mov AH, 3e
		mov BX, [handle_nivel]
		int 21
		;;
		jmp ciclo_juego
		jmp fin
    ; clear_pantalla - limpia la pantalla
    ;; ..
    ;; ..
    clear_pantalla:
            mov CX, 19  ;; 25
            mov BX, 00
        clear_v:
                push CX
                mov CX, 28  ;; 40
                mov AX, 00
        clear_h:
                mov SI, offset dim_sprite_vacio
                mov DI, offset data_sprite_vacio
                call pintar_sprite
                add AX, 08
                loop clear_h
                add BX, 08
                pop CX
                loop clear_v
                ret

    ;; pintar_pixel - pintar un pixel
    ;; ENTRADA:
    ;;     AX --> x pixel
    ;;     BX --> y pixel
    ;;     CL --> color
    ;; SALIDA: pintar pixel
    ;; AX + 320*BX
    pintar_pixel:
            push AX
            push BX
            push CX
            push DX
            push DI
            push SI
            push DS
            mov DX, 0a000
            mov DS, DX
            ;; (
            ;; 	posicionarse en X
            mov SI, AX
            mov AX, 140
            mul BX
            add AX, SI
            mov DI, AX
            ;;
            mov [DI], CL  ;; pintar
            ;; )
            pop DS
            pop SI
            pop DI
            pop DX
            pop CX
            pop BX
            pop AX
            ret

    ;; menu_principal - menu principal
    ;; ..
    ;; SALIDA
    ;;    - [opcion] -> código numérico de la opción elegida
    menu_principal:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset iniciar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset puntajes
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset configuracion
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
    entrada_menu_principal:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_principal
		cmp AH, 50
		je sumar_opcion_menu_principal
		cmp AH, 3b  ;; le doy F1
		je fin_menu_principal
		jmp entrada_menu_principal
    restar_opcion_menu_principal:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero
		mov [opcion], AL
		jmp mover_flecha_menu_principal
    sumar_opcion_menu_principal:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_principal
    volver_a_cero:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_principal
    volver_a_maximo:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_principal
    mover_flecha_menu_principal:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
    ciclo_ubicar_flecha_menu_principal:
		cmp CL, 0
		je pintar_flecha_menu_principal
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_principal
    pintar_flecha_menu_principal:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_principal
		;;
    fin_menu_principal:
		ret

    ;; pintar_flecha - pinta una flecha
    pintar_flecha:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_flcha
		mov DI, offset data_sprite_flcha
		call pintar_sprite
		ret

    ;; pintar_sprite - pinta un sprite
    ;; Entrada:
    ;;    - DI: offset del sprite
    ;;    - SI: offset de las dimensiones
    ;;    - AX: x sprite 320x200
    ;;    - BX: y sprite 320x200
    pintar_sprite:
		push DI
		push SI
		push AX
		push BX
		push CX
		inc SI
		mov DH, [SI]  ;; vertical
		dec SI        ;; dirección de tam horizontal
		;;
    inicio_pintar_fila:
		cmp DH, 00
		je fin_pintar_sprite
		push AX
		mov DL, [SI]
    pintar_fila:
		cmp DL, 00
		je pintar_siguiente_fila
		mov CL, [DI]
		call pintar_pixel
		inc AX
		inc DI
		dec DL
		jmp pintar_fila
    pintar_siguiente_fila:
		pop AX
		inc BX
		dec DH
		jmp inicio_pintar_fila
    fin_pintar_sprite:
		pop CX
		pop BX
		pop AX
		pop SI
		pop DI
		ret

;; pintar_mapa - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_mapa:
		mov AL, 00   ;; fila
		;;
ciclo_v:
		cmp AL, 19
		je fin_pintar_mapa
		mov AH, 00   ;; columna
		;;
ciclo_h:
		cmp AH, 28
		je continuar_v
		push AX
		call obtener_de_mapa
		pop AX
		;;
                cmp DL, NADA
		je pintar_vacio_mapa
		;;
                cmp DL, JUGADOR
		je pintar_jugador_mapa
		;;
                cmp DL, PARED
		je pintar_pared_mapa
		;;
                cmp DL, CAJA
		je pintar_caja_mapa
		;;
                cmp DL, OBJETIVO
		je pintar_objetivo_mapa
        ;;
                cmp DL, CAJAOBJETIVO
		je pintar_caja_mapa
		;;
                cmp DL, SUELO
		je pintar_suelo_mapa
		;;
		jmp continuar_h
pintar_vacio_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_suelo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_jugador_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_mario
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_pared_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_caja_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp continuar_h
continuar_h:
		inc AH
		jmp ciclo_h
continuar_v:
		inc AL
		jmp ciclo_v
fin_pintar_mapa:
		ret

    ;; delay - subrutina de retardo
    delay:
            push SI
            push DI
            mov SI, 0200
    cicloA:
            mov DI, 0130
            dec SI
            cmp SI, 0000
            je fin_delay
    cicloB:
            dec DI
            cmp DI, 0000
            je cicloA
            jmp cicloB
    fin_delay:
            pop DI
            pop SI
            ret

    callmenuConfig:
        call menuConfig
menuConfig: 
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 2
		mov [maximo], AL
		mov AX, 50
		mov BX, 78
		mov [xFlecha], AX
		mov [yFlecha], BX
	;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0A  ; columna 12
		mov DH, 03  ;fila 1
		mov BH, 00
		mov AH, 02 
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset configTitulo
		mov AH, 09
		int 21
		pop DX
		;;

		add DH, 01
		mov BH, 00
		mov AH, 02
		int 10

 
		;;;; ARRIBA: 
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset arribaTitulo
		mov AH, 09
		int 21
		pop DX

		; imprimiendo el caracter correspondiente
		push DX
		mov DX, offset stringcontrol_arriba
		mov AH, 09
		int 21
		pop DX 
		;;
		;;;; ABAJO: 
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset abajoTitulo
		mov AH, 09
		int 21
		pop DX

			; imprimiendo el caracter correspondiente
		push DX
		mov DX, offset stringcontrol_abajo
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; izquierda
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset izqTitulo
		mov AH, 09
		int 21
		pop DX

			; imprimiendo el caracter correspondiente
		push DX
		mov DX, offset stringcontrol_izquierda
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; DERECHA:
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset derechaTitulo
		mov AH, 09
		int 21
		pop DX

			; imprimiendo el caracter correspondiente
		push DX
		mov DX, offset stringcontrol_derecha
		mov AH, 09
		int 21
		pop DX

		add DH, 01
		mov BH, 00
		mov AH, 02
		int 10

		; mov DL, 0A  ; columna 12
		; mov DH, 09  ;fila 1
		; mov BH, 00
		; mov AH, 02 
		; int 10

		
		;;;; CAMBIAR CONTROLES:
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cambiarControlTitle
		mov AH, 09
		int 21
		pop DX
		;;;; REGRESAR:
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset back
		mov AH, 09
		int 21
		pop DX

		
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
    entrada_menu_config:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_config
		cmp AH, 50
		je sumar_opcion_menu_config
		cmp AH, 3b  ;; le doy F1
		je fin_menu_config
		jmp entrada_menu_config
    restar_opcion_menu_config:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero_conf
		mov [opcion], AL
		jmp mover_flecha_menu_config
    sumar_opcion_menu_config:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo_conf
		mov [opcion], AL
		jmp mover_flecha_menu_config
    volver_a_cero_conf:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_config
    volver_a_maximo_conf:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_config
    mover_flecha_menu_config:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50  ; COL
		mov BX, 78 ; FILA
		mov CL, [opcion]
    ciclo_ubicar_flecha_menu_config:
		cmp CL, 0
		je pintar_flecha_menu_config
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_config
    pintar_flecha_menu_config:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_config
		;;

	changeControls:
    mov DL, 05  ; columna 12
    mov DH, 01  ;fila 1
    mov BH, 00
    mov AH, 02 
    int 10
        ;; <<-- posicionar el cursor

    call clear_pantalla
    mPrint prompt_abajo
    mov ah, 00
    int 16
    mov control_abajo, ah
    mov stringcontrol_abajo[0], al

        mov DL, 05  ; columna 12
    mov DH, 01  ;fila 1
    mov BH, 00
    mov AH, 02 
    int 10
        ;; <<-- posicionar el cursor

    call clear_pantalla
    mPrint prompt_arriba
    mov ah, 00
    int 16
    mov control_arriba, ah
    mov stringcontrol_arriba[0], al

        mov DL, 05  ; columna 12
    mov DH, 01  ;fila 1
    mov BH, 00
    mov AH, 02 
    int 10
        ;; <<-- posicionar el cursor
 
    call clear_pantalla
    mPrint prompt_derecha
    mov ah, 00
    int 16
    mov control_derecha, ah
    mov stringcontrol_derecha[0], al

        mov DL, 05  ; columna 12
    mov DH, 01  ;fila 1
    mov BH, 00
    mov AH, 02 
    int 10
        ;; <<-- posicionar el cursor
 
    call clear_pantalla
    mPrint prompt_izquierda
    mov ah, 00
    int 16
    mov control_izquierda, ah 
	limpiar_databyte offset stringcontrol_izquierda, longitud_cadena
    mov stringcontrol_izquierda[0], al 
 
    jmp callmenuConfig

    fin_menu_config:
		; comprobar la entada
		cmp [opcion], 0
		je changeControls
		cmp [opcion], 1
		je sendMenu
		; ret
	setTeclas:
	; printear izq 
	; esperar input ocn interrupcion 16 00h
	; sustituir  
		mov  AH, 00h
		int 16h
		mov [control_arriba], AH
		jmp sendMenu

        ;; cadenaAnum
;; ENTRADA:
;;    DI -> dirección a una cadena numérica
;; SALIDA:
;;    AX -> número convertido
;;;;
cadenaAnum:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_cadenaAnum
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_cadenaAnum:
		ret

;; cadena_igual - verifica que dos cadenas sean iguales
;; ENTRADA:
;;    - SI: cadena 1, con su tamaño en el primer byte
;;    - DI: cadena 2
;; SALIDA:
;;    - DL: 0ff si son iguales, 00 si no lo son
cadena_igual:
		mov CH, 00
		mov CL, [SI]
		inc SI
ciclo_cadena_igual:
		mov AL, [SI]
		cmp AL, [DI]
		jne fin_cadena_igual
		inc SI
		inc DI
		loop ciclo_cadena_igual
cadenas_son_iguales:
		mov DL, 0ff
		ret
fin_cadena_igual:
		mov DL, 00
		ret

;; adaptar_coordenada - 40x25->320x200
;; ENTRADA:
;;    AH -> x 40x25
;;    AL -> y 40x25
;; SALIDA:
;;    AX -> x 320x200
;;    BX -> y 320x200
adaptar_coordenada:
		mov DL, 08
		mov CX, AX
		mul DL
		mov BX, AX
		;;
		mov AL, CH
		mul DL
		ret
		
;; colocar_en_mapa - coloca un elemento en el mapa
;; ENTRADA:
;;    - DL -> código numérico del elemento
;;    - AH -> x
;;    - AL -> y
;; ...
colocar_en_mapa:
		mov CX, AX     ;;;   AH -> x -> CH
		mov BL, 28
		mul BL   ;; AL * BL  = AX
		mov CL, CH
		mov CH, 00     ;;; CX el valor de X completo
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov [DI], DL
		ret


;; obtener_de_mapa - obtiene un elemento en el mapa
;; ENTRADA:
;;    - AH -> x
;;    - AL -> y
;; SALIDA:
;;    - DL -> código numérico del elemento
obtener_de_mapa:
		mov CX, AX
		mov BL, 28
		mul BL
		mov CL, CH
		mov CH, 00
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov DL, [DI]
		ret

;; mapa_quemado - mapa de prueba
mapa_quemado:
		mov DL, SUELO
		mov AH, 2
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 2
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 4
		call colocar_en_mapa
		;;
		mov DL, JUGADOR
		mov AH, [xJugador]
		mov AL, [yJugador]
		call colocar_en_mapa
		;;
		mov DL, CAJA
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		;;
		mov DL, OBJETIVO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		;;
		mov DL, PARED
		mov AH, 1
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 5
		call colocar_en_mapa

		mov DL, PARED
		mov AH, 2
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 5
		call colocar_en_mapa
		ret


;; entrada_juego - manejo de las entradas del juego
entrada_juego:
		mov AH, 01
		int 16
		jz fin_entrada_juego  ;; nada en el buffer de entrada
		mov AH, 00
		int 16
		;; AH <- scan code
		cmp AH, [control_arriba]
		je mover_jugador_arr
		cmp AH, [control_abajo]
		je mover_jugador_aba
		cmp AH, [control_izquierda]
		je mover_jugador_izq
		cmp AH, [control_derecha]
		je mover_jugador_der
		cmp AH, 3C  ; poner pausa
		je menuPause
		ret
	mover_jugador_arr:
			mov AH, [xJugador] ;posicion x de jugador
			mov AL, [yJugador] ;posicion y de jugador
			dec AL             ; se mueve arriba
			push AX
			call obtener_de_mapa
			pop AX
			;; DL <- elemento en mapa
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_caja_arriba
			cmp DL, OBJETIVO 
			je hay_objetivo_arriba
			cmp DL, CAJAOBJETIVO 
			je hay_cajaobjetivo_arriba
			mov [yJugador], AL          ;cambiamos posicion de jugador
			;;
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_arriba
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	hay_pared_arriba:
			ret
	hay_cajaobjetivo_arriba:
			;revisar si hay algo arriba 
			dec AL
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO
			je poner_cajaObj_arriba
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			inc AL 
			mov [yJugador], AL          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_arriba
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			inc [flagHayX]
			ret
	hay_caja_arriba:
			;revisar si hay algo arriba 
			dec AL
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO
			je poner_cajaObj_arriba
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			inc AL 
			mov [yJugador], AL          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_arriba
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	poner_cajaObj_arriba:
			;mover cajaObjetivo, mover jugador, poner suelo
			mov DL, CAJAOBJETIVO             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			inc AL 
			mov [yJugador], AL          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_arriba
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			dec contadorWin
			cmp contadorWin, 0 ; si ya gano
			je lvls
			ret
	hay_objetivo_arriba:
			inc [flagHayX]
			mov [yJugador], AL          ;cambiamos posicion de jugador
			;;
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	pintar_objetivo_arriba:
			mov [flagHayX], 00      ;ponemos la flag en false
			mov DL, OBJETIVO            ;ponemos suelo en dl 
			inc AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
			
	mover_jugador_aba:
			mov AH, [xJugador]
			mov AL, [yJugador]
			inc AL
			push AX
			call obtener_de_mapa
			pop AX
			;; DL <- elemento en mapa
			cmp DL, PARED
			je hay_pared_abajo
			cmp DL, CAJA
			je hay_caja_abajo
			cmp DL, OBJETIVO 
			je hay_objetivo_abajo
			cmp DL, CAJAOBJETIVO 
			je hay_cajaobjetivo_abajo
			mov [yJugador], AL
			;;
			mov DL, JUGADOR
			push AX
			call colocar_en_mapa
			pop AX
			;;
			cmp [flagHayX], 00
			jne pintar_objetivo_abajo
			;;
			mov DL, SUELO
			dec AL
			call colocar_en_mapa
			ret
	hay_pared_abajo:
			ret
	hay_cajaobjetivo_abajo:
			;revisar si hay algo arriba 
			inc AL
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO
			je poner_cajaObj_abajo
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			dec AL 
			mov [yJugador], AL          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_abajo
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			inc [flagHayX]
			ret
	hay_caja_abajo:
			;revisar si hay algo arriba 
			inc AL
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO
			je poner_cajaObj_abajo
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			dec AL 
			mov [yJugador], AL          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_abajo
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	poner_cajaObj_abajo:
			mov DL, CAJAOBJETIVO             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			dec AL 
			mov [yJugador], AL          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_abajo
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			dec contadorWin
			cmp contadorWin, 0 ; si ya gano
			je lvls
			ret
	hay_objetivo_abajo:
			inc [flagHayX]
			mov [yJugador], AL          ;cambiamos posicion de jugador
			;;
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	pintar_objetivo_abajo:
			mov [flagHayX], 00      ;ponemos la flag en false
			mov DL, OBJETIVO            ;ponemos suelo en dl 
			dec AL                      ;lo ponemos en posicion anterior (abajo)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	mover_jugador_izq:
			mov AH, [xJugador]
			mov AL, [yJugador]
			dec AH
			push AX
			call obtener_de_mapa
			pop AX
			;; DL <- elemento en mapa
			cmp DL, PARED
			je hay_pared_izquierda
			cmp DL, CAJA
			je hay_caja_izquierda
			cmp DL, OBJETIVO
			je hay_objetivo_izquierda
			cmp DL, CAJAOBJETIVO
			je hay_cajaobjetivo_izquierda
			mov [xJugador], AH
			;;
			mov DL, JUGADOR
			push AX
			call colocar_en_mapa
			pop AX
			;;
			cmp [flagHayX], 00
			jne pintar_objetivo_izquierda
			;;
			mov DL, SUELO
			inc AH
			call colocar_en_mapa
			ret
	hay_pared_izquierda:
			ret
	hay_cajaobjetivo_izquierda:
			;revisar si hay algo izq 
			dec AH
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO 
			je poner_paredObjetivo_izq
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			inc AH 
			mov [xJugador], AH          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_izquierda
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			inc [flagHayX]
			ret
	hay_caja_izquierda:
			;revisar si hay algo izq 
			dec AH
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO 
			je poner_paredObjetivo_izq
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			inc AH 
			mov [xJugador], AH          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_izquierda
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	poner_paredObjetivo_izq:
			mov DL, CAJAOBJETIVO             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			inc AH 
			mov [xJugador], AH          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_izquierda
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa
			dec contadorWin 
			cmp contadorWin, 0 ; si ya gano
			je lvls
			ret
	hay_objetivo_izquierda:
			inc [flagHayX]
			mov [xJugador], AH          ;cambiamos posicion de jugador
			;;
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			inc AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	pintar_objetivo_izquierda:
			mov [flagHayX], 00      ;ponemos la flag en false
			mov DL, OBJETIVO            ;ponemos suelo en dl 
			inc AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	mover_jugador_der:
			mov AH, [xJugador]
			mov AL, [yJugador]
			inc AH
			push AX
			call obtener_de_mapa
			pop AX
			;; DL <- elemento en mapa
			cmp DL, PARED
			je hay_pared_derecha
			cmp DL, CAJA
			je hay_caja_derecha
			cmp DL, OBJETIVO
			je hay_objetivo_der
			cmp DL, CAJAOBJETIVO
			je hay_cajaobjetivo_der
			mov [xJugador], AH
			;;
			mov DL, JUGADOR
			push AX
			call colocar_en_mapa
			pop AX
			;;
			cmp [flagHayX], 00
			jne pintar_objetivo_der
			;;
			mov DL, SUELO
			dec AH
			call colocar_en_mapa
			ret
	hay_pared_derecha:
			ret
	hay_cajaobjetivo_der:
			;revisar si hay algo izq 
			inc AH
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO
			je poner_paredObjetivo_der
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			dec AH 
			mov [xJugador], AH          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_der
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			inc [flagHayX]
			ret
	hay_caja_derecha:
			;revisar si hay algo izq 
			inc AH
			push AX
			call obtener_de_mapa
			pop AX
			;si lo hay ret
			cmp DL, PARED 
			je hay_pared_arriba
			cmp DL, CAJA 
			je hay_pared_arriba
			cmp DL, OBJETIVO
			je poner_paredObjetivo_der
			;si no lo hay, mover caja, mover jugador, poner suelo
			mov DL, CAJA             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			dec AH 
			mov [xJugador], AH          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_der
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	poner_paredObjetivo_der:
			mov DL, CAJAOBJETIVO             ;ponemos a caja en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;movemos jugador
			dec AH 
			mov [xJugador], AH          ;cambiamos posicion de jugador
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			cmp [flagHayX], 00      ;revisamos si flagHayX es true
			jne pintar_objetivo_der
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			dec contadorWin
			cmp contadorWin, 0 ; si ya gano
			je lvls
			ret
	hay_objetivo_der:
			inc [flagHayX]
			mov [xJugador], AH          ;cambiamos posicion de jugador
			;;
			mov DL, JUGADOR             ;ponemos a jugador en registro dl
			push AX
			call colocar_en_mapa        ;lo pintamos en el mapa
			pop AX
			;;
			mov DL, SUELO               ;ponemos suelo en dl 
			dec AH                      ;lo ponemos en posicion anterior (izq)
			call colocar_en_mapa        ;pintamos en el mapa 
			ret
	pintar_objetivo_der:
        mov [flagHayX], 00      ;ponemos la flag en false
        mov DL, OBJETIVO            ;ponemos suelo en dl 
		dec AH                      ;lo ponemos en posicion anterior (izq)
		call colocar_en_mapa        ;pintamos en el mapa 
		ret
fin_entrada_juego:
		ret

    

;; memset - memset
;; ENTRADA:
;;    - DI: offset del inicio de la cadena de bytes
;;    - CX: cantidad de bytes
;;    - AL: valor que se pondrá en cada byte
memset:
		push DI
ciclo_memset:
		mov [DI], AL
		inc DI
		loop ciclo_memset
		pop DI
		ret


;; leer_cadena_numerica - lee una cadena que debería estar compuesta solo de números
;; ENTRADA:
;;    - DI: offset del inicio de la cadena numérica
;; SALIDA:
;;    - [numero]: el contenido de la cadena numérica
leer_cadena_numerica:
		mov SI, DI
		;;
		mov DI, offset numero
		mov CX, 0005
		mov AL, 30
		call memset
		;;
		mov DI, SI
		mov CX, 0000
ciclo_ubicar_ultimo:
		mov AL, [DI]
		cmp AL, 30
		jb copiar_cadena_numerica
		cmp AL, 39
		ja copiar_cadena_numerica
		inc DI
		inc CX
		jmp ciclo_ubicar_ultimo
copiar_cadena_numerica:
		push DI   ;;   <----
		dec DI
		;;
		mov SI, offset numero
		add SI, 0004
ciclo_copiar_num:
		mov AL, [DI]
		mov [SI], AL
		dec DI
		dec SI
		loop ciclo_copiar_num
		pop DI
		ret

;; siguiente_linea - extrae la siguiente línea del archivo referenciado por el handle en BX
;; ENTRADA:
;;    - BX: handle
;; SALIDA:
;;    - [linea]: contenido de la línea que se extrajo, finalizada en 00 (nul0)
;;    - DL: si el archivo llegó a su fin
;;    - DH: la cantidad de caracteres en la línea
siguiente_linea:
		mov SI, 0000
		mov DI, offset linea
		;;
ciclo_sig_linea:
		mov AH, 3f
		mov CX, 0001
		mov DX, DI
		int 21
		cmp AX, 0000
		je fin_siguiente_linea
		mov AL, [DI]
		cmp AL, 0a
		je quitar_nl_y_fin
		inc SI
		inc DI
		jmp ciclo_sig_linea
quitar_nl_y_fin:
		mov AL, 00
		mov [DI], AL
		mov DX, SI
		mov DH, DL
		mov DL, 00    ;; no ha finalizado el archivo
		ret
fin_siguiente_linea:
		mov DL, 0ff   ;; ya finalizó el archivo
		ret


;; ignorar_espacios - ignora una sucesión de espacios
;; ENTRADA:
;;    - DI: offset de una cadena cuyo primer byte se supone es un espacio
;; ...
ignorar_espacios:
ciclo_ignorar:
		mov AL, [DI]
		cmp AL, 20
		jne fin_ignorar
		inc DI
		jmp ciclo_ignorar
fin_ignorar:
		ret


	menuPause:
    menuPause2:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 2
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; BACK  JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset back
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; EXIT
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset exitPause
		mov AH, 09
		int 21
		pop DX 
		
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
    entrada_menu_pause:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_pause
		cmp AH, 50
		je sumar_opcion_menu_pause
		cmp AH, 3b  ;; le doy F1
		je fin_menu_pause
		jmp entrada_menu_pause
    restar_opcion_menu_pause:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero_pause
		mov [opcion], AL
		jmp mover_flecha_menu_pause
    sumar_opcion_menu_pause:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_pause
    volver_a_cero_pause:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_pause
    volver_a_maximo_pause:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_pause
    mover_flecha_menu_pause:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
    ciclo_ubicar_flecha_menu_pause:
		cmp CL, 0
		je pintar_flecha_menu_pause
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_pause
    pintar_flecha_menu_pause:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_pause
		;;
    fin_menu_pause:
        ; mov [opcion], 00
        cmp opcion, 0
        je ciclo_juego
        cmp opcion, 1
        je sendMenu
		; ret
    sendMenu:
        mov [opcion] ,00
        mov ax, 0000
        call menu_principal
		jmp check

lvls:
		cmp contNivelitos, 0
		je lvlone
		cmp contNivelitos, 1
		je lvltwo
		cmp contNivelitos, 2
		je cleanGame 
	lvlone:	
		inc contNivelitos
		mov contadorWin, 0000
		mov DI , offset mapa
		mov CX, 3e8
		mov AL, 00000
		call memset
		mov nivel_x[7], "1"
		jmp cargar_un_nivel
	lvltwo:	
		inc contNivelitos
		mov contadorWin, 0000
		mov DI , offset mapa
		mov CX, 3e8
		mov AL, 00000
		mov nivel_x[6], "1"
		mov nivel_x[7], "0"
		call memset
		jmp cargar_un_nivel

	cleanGame:
		mov contadorWin, 0000
		mov contNivelitos, 0000
		jmp menu_principal
	fin:
.EXIT
END