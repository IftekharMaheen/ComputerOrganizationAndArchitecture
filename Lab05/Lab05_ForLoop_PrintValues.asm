.model small
.stack 100h
.code
main proc
    mov cl,'1'
    mov bl,'5'
    
    for:
    cmp cl,bl
    jl L1
    jge L2
    
    L1:
    mov ah,2
    mov dl,cl
    int 21h
    inc cl
    jmp for:
    
    L2:
    jmp exit:
    
    exit:
    mov ah,4ch
    main endp
end main