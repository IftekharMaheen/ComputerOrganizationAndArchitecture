.model small
.stack 100h

.data
a db "Choose the message type you want to print: $"
b db "Available message types => (1) Student (2) Teacher$"
c db "Selected Choice: $"
d db ?
e db "Eid Mubarak Dost!$"
f db "Eid Mubarak Sir/Ma'am! Wish you a happy eid!$"

x db 003
y db 001
z db 007
p db 004

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13       
    int 21h
    
    mov ah, 9
    lea dx, b
    int 21h
    
    
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13       
    int 21h
    
    mov ah, 9
    lea dx, c
    int 21h
    
    mov ah, 1
    int 21h
    sub al, '0'
    mov c, al
    
    
    cmp c, 1
    je student
    cmp c, 2
    je teacher
    jmp exit
    
    student:
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13       
    int 21h
    
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13       
    int 21h
    
    mov ah, 2
    mov dl, z
    int 21h
    mov dl, y
    int 21h
    mov dl, z
    int 21h
    mov dl, x
    int 21h
    mov ah, 9
    lea dx, e
    int 21h
    mov ah, 2
    mov dl, x
    int 21h
    mov dl, z
    int 21h
    mov dl, y
    int 21h 
    mov dl, z
    int 21h
    jmp exit
    
    teacher:
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13       
    int 21h
    
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13       
    int 21h
    
    mov ah, 2
    mov dl, z
    int 21h
    mov dl, y
    int 21h
    mov dl, z
    int 21h
    mov dl, p
    int 21h
    mov ah, 9
    lea dx, f
    int 21h
    mov ah, 2
    mov dl, p
    int 21h
    mov dl, z
    int 21h
    mov dl, y
    int 21h 
    mov dl, z
    int 21h
    jmp exit
    
    exit:
    mov ah, 4ch
    main endp
end main