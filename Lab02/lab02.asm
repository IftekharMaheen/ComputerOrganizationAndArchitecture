.model small
.stack 100h
.data
a db 5
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,a
    add dl,48
    int 21h
    
    exit:
    main endp
end main