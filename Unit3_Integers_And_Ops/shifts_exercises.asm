; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	; mov eax, 4	; TODO: add code
        ; mov ebx, 2
        ; test eax, ebx
        ; dump_regs 1

        ; mov eax, 13
        ; xor eax, eax
        ; call print_int

        ; mov ebx, 1
        ; shl ebx, 2

        ; mov eax, 11
        ; or eax, ebx
        ; call print_int

        mov ebx, 1
        shl ebx, 3
        not ebx

        mov eax, 15
        or eax, ebx
        call print_int

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


