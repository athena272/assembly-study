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
    ;N = I / j
    mov edx,0
    mov eax, I
    div J
    mov quociente, eax
    mov resto, edx

    printf("Valor do quociente: %d \n", quociente)
    printf("Valor do resto: %d \n", resto)
end start