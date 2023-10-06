;PUSH and POP 
;String Reversion
.model small
.stack 100h
.code

main proc
       
     mov cx,0     
      
     input:
     mov ah,1
     int 21h
      
     cmp al,13d ;checking enter?
     je print
      
     and dx,0
     mov dl,al
     push dx 
     inc cx
     jmp input   
           
     print:
     and dx,0
     pop dx
     mov ah,2
     int 21h
     loop print      
           
    main endp
end main