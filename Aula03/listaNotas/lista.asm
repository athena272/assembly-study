.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\msvcrt.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\msvcrt.lib
include \masm32\macros\macros.asm

.data
    vetorNotas dd 5, 6, 7
    tamanho equ ($ - vetorNotas) / 4
    quociente DD 0
     
.code
start:

    xor eax, eax 
    mov edx,0
    mov ebx, offset vetorNotas
    mov ecx, tamanho
    somar_elementos:
        add eax, [ebx] 
        add ebx, 4 
    loop somar_elementos
    mov ecx,tamanho
    div ecx
    mov quociente, eax
    
    printf("A soma dos elem: %d \n", eax)

    invoke ExitProcess, 0
end start