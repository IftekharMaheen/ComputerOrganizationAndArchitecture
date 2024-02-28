.model small
.stack 100h

.data
a db "List of Letters: $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    mov cl,97       ;Counter Register. Storing initial counter value of a which is ascii code 97
    
    for:
    cmp cl,122      ;Compare counter reg against the last range of the set which is z (ascii 122)
    jle L1          ;if counter register is lesser thn or equal to 122, go to L1
    jmp L2          ;if counter register is not lesser thn or equal to 122, go to L2
    
    L1:             ;L1 Block
    mov ah,2        ;Print function
    mov dl,cl       ;Copy counter register to dl
    int 21h         ;Execute the above code
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    inc cl          ;increment the value of counter register
    jmp for:        ;jump to 'for' block
    
    L2:             ;L2 Block
    jmp exit:       ;Jump to 'Exit' block
    
    exit:           ;Exit operations
    mov ah,4ch
    main endp
end main