.model small
.stack 100h
.data
a db "Name: Iftekhar Uddin Mullick$"
b db "ID: 21-44649-1$"
c db "Section: D$"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov ah, 2
    mov dl, 010
    int 21h
    mov dl, 013
    int 21h
    
    mov ah, 9
    lea dx, b
    int 21h
    
    mov ah, 2
    mov dl, 010
    int 21h
    mov dl, 013
    int 21h
    
    mov ah, 9
    lea dx, c
    int 21h
    
    exit:
    mov ah, 4ch
    main endp
end main