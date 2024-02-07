.model small
.stack
.data
c db ?
.code
main proc
    mov ax,@data      ;sync with .data
    ;mov ds,ax
    
    mov ah,1          ;Start Read function => scanf function
    int 21h           ;Call Read Function => asks for input from usr
    mov c,al          ;Move input data stored in 'al' to 'c'
    
    
    
    mov ah,2          ;Start print function
    mov dl,c          ;Print 'c' by transfering to print reg 'dl'
    int 21h           ;Call print function
    
    exit:             ;Perform exit operation
    mov ah,4ch
    main endp
end main