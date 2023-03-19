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
    I DD 4
    J DD 8
    N DD 0

.code
start: 
    ; N = I * J (add, I, J)
    mov eax,I
    mul J
    mov N,eax

    printf("Valor de N: %d \n", N)
    invoke ExitProcess, 0
end start