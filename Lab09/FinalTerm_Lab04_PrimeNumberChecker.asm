.model small
.stack 100h
 
.data
n db 4     
a db  'The number is prime.$'
b db 'The number is not prime.$'
 
.code
main proc
    mov ax, @data
    mov ds, ax
 
    mov cl, n   
    cmp cl, 1        
    je np
    cmp cl, 0        
    je np
    mov ch, 2        
    mov al, cl       
    mov bl, ch       
    
    L1:
    cmp bl, al   
    je p
    mov ah, 0    
    div bl       
    cmp ah, 0    
    je np 
    inc bl       
    jmp L1
 
    p:
    mov ah, 9
    lea dx, a
    int 21h
    jmp exit
 
    np:
    mov ah, 9
    lea dx, b
    int 21h
 
    exit:
    mov ah, 4ch        
    main endp
end main