section .data
    ; Sección de datos donde se definen las variables y cadenas
    hello db 'Hello, World!', 0 ; La cadena a imprimir, terminada en NULL (0)

section .text
    global _start                ; Declarar el punto de entrada (_start)

_start:                         ; Inicio del programa
    ; Escribir la cadena en la salida estándar
    mov rax, 1                  ; syscall: write (número 1)
    mov rdi, 1                  ; file descriptor: 1 (stdout)
    mov rsi, hello              ; dirección de la cadena a imprimir
    mov rdx, 13                 ; longitud de la cadena (13 caracteres)
    syscall                     ; Llamada al sistema para ejecutar la syscall

    ; Salir del programa
    mov rax, 60                 ; syscall: exit (número 60)
    xor rdi, rdi                ; código de salida 0 (success)
    syscall                     ; Llamada al sistema para salir
                                ;proyecto 2