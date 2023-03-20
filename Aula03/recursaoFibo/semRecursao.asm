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
    FAT DD 5
.code
start:
    
    mov ecx, FAT
    mov eax, 1
    xloop:
       mul ecx
       dec ecx
       cmp ecx, 2
       jae xloop
      
    printf("O FATORIAL eh %d\n", eax) 
    

    invoke ExitProcess,0
end start