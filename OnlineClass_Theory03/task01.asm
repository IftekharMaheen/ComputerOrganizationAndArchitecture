.model small
.stack 100h
.code
main proc
    mov ah,2
    mov dl,097
    int 21h
    mov dl,061
    int 21h
    mov dl,053
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main