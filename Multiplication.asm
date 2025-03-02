
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here   

.stack 100h
.data
a db 2
b db 5
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,2
    add a,48
    mov dl,a 
    int 21h
    
    mov dl,32
    int 21h
    add b,48
    mov dl,b
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    

ret




