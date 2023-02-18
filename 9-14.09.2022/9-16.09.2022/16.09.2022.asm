.MODEL SMALL





.STACK





.DATA


FIRST   DW  1111111111111111B
SECOND  DW  11111111B
RESULT  DB  3



.CODE
.STARTUP

        MOV AX,FIRST
        AND AX,0XF000
        SHR AX,12 
        
        MOV BX,SECOND
        SHR BX,2 
        ADD AX,BX
        MOV RESULT[2],AL
        
        MOV AX,FIRST
        AND AX,0X0FFF
        SHL AX,4
        
        MOV BX,SECOND
        AND BX,0X0003
        SHL BX,14
        
        ADD AX,BX
        
        ADC RESULT[2],0
        
        MOV RESULT[1],AH
        
        MOV RESULT,AL
         
          
        
        


.EXIT
ENDP