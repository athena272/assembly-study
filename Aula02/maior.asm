.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
include \masm32\include\msvcrt.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\msvcrt.lib

include \masm32\macros\macros.asm

.data
    I DD 8
    J DD 4
    quociente DD 0
    resto DD 0

.code
start: 
    ;Se J > I, imprimir "J maior". Senão, finalizar programa.
    mov eax, I
    cmp eax,J
    jg fim
    printf("J maior \n")

fim:    
    printf("J menor \n")
    invoke ExitProcess,0
end start