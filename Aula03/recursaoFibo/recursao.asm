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
    fator dd 3
    
.code
    ; define a função fatorial
    fatorial:
        cmp eax, 1 
        jle fim
        push eax ; SALVA EAX NA PILHA
        dec eax 
        call fatorial ; CHAMADA DA FUNCAO DNV
        pop ebx ; RECUPERAR NUM NA PILHA
        mul ebx ; MULTIPLICA EM EAX
    fim:
        ret
      start:
        mov eax, fator
        call fatorial  
        printf("O fatorial eh %d",eax)
        invoke ExitProcess, 0
end start