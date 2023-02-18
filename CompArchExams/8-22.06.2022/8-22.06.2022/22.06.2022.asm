.model small


.stack




.data
 
DIVIDEND DW 0XFFFE
DIVISOR DB  0X0003 
RESULT DW 2 DUP(?) 
 

.code
.startup
       
       XOR DX,DX
       MOV AX, DIVIDEND
       MOV BL, DIVISOR  
       
       DIV BX
        
        
       MOV RESULT[2],AX
       
       MOV AH,DL
       XOR AL,AL
       DIV BL 
       
       XOR AH,AH 
       XCHG AH,AL 
       MOV RESULT[0],AX
       
       

.exit

endp