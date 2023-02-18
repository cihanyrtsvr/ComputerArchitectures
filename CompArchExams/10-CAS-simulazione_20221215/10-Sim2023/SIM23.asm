.MODEL SMALL


.STACK

N EQU  8
SIZE EQU N*N    




.DATA

SOURCE DW   'C',	'D',	'A',	'F',	'K',	'K',	'J',	'M'
       DW   'B',	'B',	'B',	'D',	'H',	'G',	'R',	'E'
       DW   'O',	'O',	'P',	'U',	'Y',	'R',	'E',	'F'
       DW   'W',	'W',	'W',	'W',	'F',	'R',	'Y',	'Z'
       DW   'T',	'T',	'T',	'T',	'T',	'T',	'T',	'T'
       DW   'D',	'E',	'A',	'H',	'T',	'U',	'I',	'O'
       DW   'R',	'E',	'R',	'T',	'S',	'W',	'E',	'T'
       DW   'B',	'T',	'U',	'O',	'K',	'Z',	'X',	'D'



RESULT  DW 1 DUP(0)

.CODE
.STARTUP
        
        XOR SI,SI
        XOR DI,DI
        XOR CX,CX
        XOR DX,DX
        XOR BX,BX
        
        MOV BX,4
        
        MOV CX,SIZE 
         
LP:     MOV AX,SOURCE[SI]
        
        CMP AX,65
        JNE NEXT
        
        MOV DI,SI
        AND DI,3
        
        CMP DI,BX
        JE  FIN 
        
        MOV BX,DI
        
        
        
        
NEXT:   ADD SI,2
        LOOP LP 
        
        MOV RESULT,78
          
        JMP FIN2
        
FIN:    
        MOV RESULT,89
        

FIN2: 

.EXIT

ENDP