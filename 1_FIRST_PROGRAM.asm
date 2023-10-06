;SIMPLE INPUT-OUTPUT PROGRAM
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1   ;Input Function
    INT 21H    ;Interrupt
    MOV BL, AL ;Putting input into BL for Output
    
    MOV AH,2   ;Output Function
    MOV DL, BL ;OUTPUT
    INT 21H    ;Interrupt
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP

END MAIN