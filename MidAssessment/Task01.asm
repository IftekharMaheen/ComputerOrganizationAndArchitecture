.model small
.stack 100h 

.data
a db ?
op1 db "Here last 2 digit=$"
op2 db "Final output: $"

.code
main proc 
    mov ax, @data      
    mov ds, ax         

    mov ah,9
    lea dx,op1
    int 21h
    
    mov ah, 1          
    int 21h            
    mov bl, al          
    
    mov ah, 01h        
    int 21h            
    mov bh, al         

    sub bl, 30h        
    sub bh, 30h        

    mov al, bl         
    mov ah, 0          
    mov cl, 10         
    mul cl             
    add al, bh         
    mov a, al          

    mov ah, 02h        
    mov dl, 010        
    int 21h            
    mov dl, 013        
    int 21h
    
    mov dl, a          
    int 21h           

    exit:
    mov ah,4ch
    main endp
end main
