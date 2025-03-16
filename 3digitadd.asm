.model small
.stack 100h
.code


main proc  
    
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,2
   mov  dl,43
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al 
    mov ah,2
    add bl,bh
    ;int 21h 
    sub bl,48
    ;int 21h
    
   
    mov ah,2
    mov dl,45
    int 21h
    
   
    
    mov ah,1
    int 21h
    mov cl,al
   
    mov ah,2 
    mov dl,61
    int 21h
     
    mov ah,2
    sub bl,cl
    
    add bl,48 
    mov dl,bl
    int 21h
    
    
   
    
    exit:
    main endp
end main




