; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"

; initialized data
age equ 30 ; symbol
%define fav_number 14 ; macro

segment .data

fav_color db "purple💜", 0 ; string, null terminator otherwise it will put fav and leastfav together
least_fav_color db "yellow", 0  
number dd 116 ; integer
letter db "A" ; character 
firstInitialASCII dd 84
helloWorld db "Hello World!", 0

char_prompt db "Enter a character: ", 0
int_prompt db "Enter an integer: ", 0

many_numbers times 15 dd 34

many_z times 5 db "Z"


; uninitialized data
segment .bss
space_for_int resd 1

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

; 	mov eax, [number] ; eax = 116
;         mov dword [number], 32

;         dump_regs 1

;         call print_int
;         call print_char

;         mov eax, [firstInitialASCII]
;         mov dword [firstInitialASCII], 32
        
;         call print_int
; ]       call print_nl
;         call print_char
;         call print_nl

        ;dump_mem 1, fav_color, 0

        ; mov eax, fav_color + 3 ; skip first three letters
        ; call print_string

        ; mov eax, helloWorld
        ; call print_string
        ; call print_nl
        ; dump_mem 1, helloWorld, 0
        ; call print_nl

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char

        ; mov eax, int_prompt
        ; call print_string
        ; call read_int

        dump_mem 1, many_z, 0
        call print_nl
        dump_mem 2, many_z + 3, 0       

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


