.model small
.stack 100h
.data
a db "Enter input: $"
b db ?
c db "Output: $"

.code
main proc
    mov ax,@data    ;sync .data with base reg
    mov ds,ax       
    
    mov ah,9        ;printf for string
    lea dx,a        ;bring the data from var 'a'
    int 21h         ;call the above
    
    mov ah,1        ;scanf function
    int 21h         ;call scanf func above
    mov b,al        ;copy var 'b' from input reg 'a1'
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    mov ah,9        ;printf for string
    lea dx,c        ;bring the data from var 'c'
    int 21h         ;call the above
    
    mov ah,2        ;printf function
    mov dl,b        ;copy data of 'b' to 'dl'
    int 21h         ;call the above
    
    exit:
    mov ah,4ch
    main endp
end main