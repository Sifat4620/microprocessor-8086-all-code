;A PROGRAM FOR
;1.MULTIPLE INPUT AND OUTPUT 2.NEW LINE 

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1   ;INPUT FUNCTION
    
    INT 21H    ;INPUT 1     
    MOV BL, AL 
    
    INT 21H    ;INPUT 2
    MOV CL, AL

    INT 21H    ;INPUT 3
    MOV CH, AL
 
                    
    MOV AH, 2  ;OUTPUT FUNCTION
    MOV DL, 10 ;New Line in Deceimal
    INT 21H                  
    MOV DL, 0DH ;Carriage Return in Hexa
    INT 21H                  
 
                    
    MOV AH, 2  ;Althoug not required OUTPUT FUNCTION here
    
    MOV DL, BL 
    INT 21H    ;OUTPUT 1

    MOV DL, CL 
    INT 21H    ;OUTPUT 2

    MOV DL, CH 
    INT 21H    ;OUTPUT 3
    
END MAIN