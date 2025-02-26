data segment

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    ; add your code here
    
    mov cl, 9
    
    PRINT:
    mov ah, 2
    mov bl, cl
    add bl, 48
    mov dl, bl
    int 21h
    
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    dec cl
    jnz PRINT
    
    

mov ax, 4c00h
int 21h  

ends

end start
