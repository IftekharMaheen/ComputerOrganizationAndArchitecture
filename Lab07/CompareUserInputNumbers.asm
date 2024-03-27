;write a program that will print the maximum value between two user define numbers

.model small
.stack 100h
.data
a db ?
b db ?
c db "Enter 1st Digit: A = $"
d db "Enter 2nd Digit: B = $"
e db "A is greater than B$"
f db "A is equal to B$"
g db "B is greater than A$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, c
    int 21h
    
    mov ah, 1
    int 21h
    mov a, al
    
    mov ah, 2
    mov dl, 010
    int 21h
    mov dl, 013
    int 21h
    
    mov ah, 9
    lea dx, d
    int 21h
    
    mov ah, 1
    int 21h
    mov b, al
    
    mov ah, 2
    mov dl, 010
    int 21h
    mov dl, 013
    int 21h
    
    mov bl, a
    cmp bl, b
    jg AGB
    je AEB
    jl BGA
    
    AGB:
    mov ah, 9
    lea dx, e
    int 21h
    jmp exit
    
    AEB:
    mov ah, 9
    lea dx, f
    int 21h
    jmp exit
    
    BGA:
    mov ah, 9
    lea dx, g
    int 21h
    jmp exit
    
    exit:
    mov ah, 4ch
    main endp
end main
    
