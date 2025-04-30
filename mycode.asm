

org 100h                   

.model small              
.stack 100h                

.data                      
array db 1,2,3,4,5         ; array 5 elements

.code                      
main proc                  ; Start

    mov ax, @data          ; Load address of data segment into AX
    mov dx, ax             ; Move data segment address into DX 
    
    mov si, offset array   ; Load offset address of the array into SI 
    mov cx, 5              ; Set loop counter to 5    
  
my_loop:                   
    mov ah, 2              ; display character in DL
    mov dl, [si]           ; Load current byte into DL
    add dl, 48             ; Convert number to ASCII 
    int 21h                ; print character in DL

    mov dl, 32             ; Load ASCII code for space (' ') into DL
    int 21h                ; Print the space

    inc si                 ; Move to next element in array
    loop my_loop           ; Decrease CX and repeat loop if CX ? 0

exit:                      
    mov ah, 4Ch            ; terminate program
    int 21h                ; Call interrupt to terminate program

main endp                  
end main                   

ret                        