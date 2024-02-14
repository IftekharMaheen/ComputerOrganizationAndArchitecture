.model small
.stack 100h
.data
a db "Enter 1st Number: $"
b db ?
c db "Enter 2nd Number: $"
d db ?
e db "Enter 3rd Number: $"
f db ?
g db "Sum of the 3 digits: $"
s db ">>> 21-44649-1 <<< $"
r db ?

.code
main proc
    mov ax,@data    ;sync .data with base reg
    mov ds,ax       
    
    mov ah,9        ;printf for string
    lea dx,s        ;bring the data from var 's'
    int 21h         ;call the above
    
    mov ah,9        ;printf for string
    lea dx,a        ;bring the data from var 'a'
    int 21h         ;call the above
    
    mov ah,1        ;scanf function
    int 21h         ;call scanf func above
    sub al,48
    mov b,al        ;copy var 'b' from input reg 'a1'
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    mov ah,9        ;printf for string
    lea dx,c        ;bring the data from var 'c'
    int 21h         ;call the above
    
    mov ah,1        ;scanf function
    int 21h         ;call scanf func above
    sub al,48
    mov d,al        ;copy var 'd' from input reg 'a1'
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    mov ah,9        ;printf for string
    lea dx,e        ;bring the data from var 'e'
    int 21h         ;call the above
    
    mov ah,1        ;scanf function
    int 21h         ;call scanf func above
    sub al,48
    mov f,al        ;copy var 'f' from input reg 'a1'
    
    mov ah,2        ;Create newline using carriage
    mov dl,10
    int 21h
    mov dl,13       ;Fill gap of carriage
    int 21h
    
    mov cl,b        ;move data of 'b' to register 'cl'
    add cl,d        ;add 'd' with the data of 'cl' which is 'b' => b+d
    add cl,f        ;add 'd' with the data of 'cl' which is 'b+d' => b+d+f
    add cl,48       ;find out the actual integer by ading 48 with the ascii value
    mov r,cl        ;move the final answer to data bit 'r' from 'cl'
    
    mov ah,9        ;printf for string
    lea dx,g        ;bring the data from var 'g'
    int 21h         ;call the above
    
    mov ah,2
    mov dl,r
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main
    