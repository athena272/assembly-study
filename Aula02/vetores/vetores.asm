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
    vetorNotas dd 5,6,7 ;vetor com inicialização individual
    vetorNotas2 dd 3 dup(1) ;vetor com inicialização genérica

    vetorNotas3 dd 5, 2 dup(3) ;vetor de inicialização híbrida
.code
start: 
    mov ebx, offset vetorNotas3
    mov ecx, 8
    mov edx, [ebx][ecx]
    printf("Nota 1: %d \n", edx)

    invoke ExitProcess,0
end start