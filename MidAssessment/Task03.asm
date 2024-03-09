.model small
.stack 100h
.data
a db '4'
b db '2'
r db ?
.code
 
main proc
    mov ax,@data
    mov ds,ax
     
    mov ah,2
    mov dl,a
    int 21h
    
    mov ah,2
    mov dl,010
    int 21h
    mov dl,013
    int 21h

    mov ah,2
    mov dl,b
    int 21h
    
    mov ah,2
    mov dl,010
    int 21h
    mov dl,013
    int 21h
    
    mov cl,a
    add cl,b
    mov r,cl
    sub r,48
    
    mov ah,2
    mov dl,r
    int 21h

    exit:
    mov ah,4ch                                  
    main endp
end main