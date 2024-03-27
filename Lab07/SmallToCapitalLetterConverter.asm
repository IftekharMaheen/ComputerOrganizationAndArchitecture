;Write a program that will print lower case to upper case

.model small
.stack 100h
.data
a db "Enter lower case alphabet: $"
b db ?
c db "Output in Capital case: $"

.code
main proc
    mov ax,@data    
    mov ds,ax       
    
    mov ah,9        
    lea dx,a        
    int 21h         
    
    mov ah,1        
    int 21h         
    mov b,al        
    
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13       
    int 21h
    
    mov ah,9        
    lea dx,c        
    int 21h         
    
    mov ah,2        
    mov dl,b
    sub dl,32        
    int 21h         
    
    exit:
    mov ah,4ch
    main endp
end main