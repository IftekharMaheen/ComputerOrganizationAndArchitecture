.model small
.stack 100h
.data
    userInput db ?    
    grade db ?        
    promptMsg db "Enter your score (two-digit number): $"
    gradeMsg db 0Dh, 0Ah, "Grade: $"
 
.code
main proc
    mov ax, @data
    mov ds, ax
 
    xor ax, ax
 
   
    mov ah, 9
    mov dx, offset promptMsg  
    int 21h
 
   
    mov ah, 01h     
    int 21h        
    sub al, '0'    
    mov userInput, al   
 
   
    mov ah, 01h    
    int 21h         
    sub al, '0'     
    mov bl, al    

    mov al, userInput 
    mov bl, 10       
    mul bl            
    add al, bl       
    add al, bl        
    mov userInput, al
 
    
    cmp userInput, 90
    jge grade_Aplus
    cmp userInput, 85
    jge grade_A
    cmp userInput, 80
    jge grade_Bplus
    jmp grade_other
 
grade_Aplus:
    mov grade, 'A'
    jmp print_grade
 
grade_A:
    mov grade, 'A'
    jmp print_grade
 
grade_Bplus:
    mov grade, 'B'
    jmp print_grade
 
grade_other:
    mov grade, 'F'
 
print_grade:
    mov ah, 9
    mov dx, offset gradeMsg  
    int 21h

    mov dl, grade
    mov ah, 02h
    int 21h
 
    
    mov ah, 4Ch
    int 21h
 
main endp
end main