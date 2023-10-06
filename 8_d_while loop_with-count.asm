;While Loop Implementation 
;Take input untile press Enter
;Count the number of characters
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
   MOV BX,0
   MOV AH,1
   INT 21H
   
   WHILE:
   CMP AL,0DH
   JE STOP_WHILE
   INC BX
   INT 21H
   JMP WHILE
   
   
   STOP_WHILE:
   
    MOV AH, 2
    MOV DL, 10 ;New Line in Deceimal
    INT 21H                  
    MOV DL, 0DH ;Carriage Return in Hexa
    INT 21H                  
        
    MOV DX, BX    
    ADD DX, 48
    
   MOV AH,2
   INT 21H


END MAIN