.model small
.stack 100h
.data
a db "we are expart in Assembly$"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main