;SUBTRACTION OF TWO NUMBERS
;SIMPLE INPUT-OUTPUT PROGRAM
.MODEL SMALL
.STACK 100H  


.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
       
    MOV CL, AL
     
    INT 21H
           
    MOV BL, AL 
          
    SUB CL,BL  ;CL=CL-BL
          
    MOV AH, 2 
    
    ADD CL,48
    
    MOV DL, CL ;OUTPUT
    INT 21H
    
END MAIN