.model small
.stack 100h
.data
a db ?
b db ?

.code
main proc
    mov ax,@data    ;sync .data with base reg
    mov ds,ax       
    
    mov ah,1        ;scanf function
    int 21h         ;call scanf func above
    sub al,48       ;subtract 48 to identify the actual value in the reg
    mov a,al        ;copy var to 'a' from input reg 'al'
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    mov ah,1        ;scanf function
    int 21h         ;call scanf func above
    sub al,48       ;subtract 48 to identify the actual value in the reg
    
    mul a           ;multiply value of 'a' with the value of 'al'
    add al,48       ;convert acsii to actual value
    mov b, al       ;move the answer to another var 'b' from 'al'
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    mov ah,2        ;int printf func
    mov dl,b        ;copy var to 'dl' from var 'b'
    int 21h         ;call the above func
    
    exit:
    mov ah,4ch
    main endp
end main