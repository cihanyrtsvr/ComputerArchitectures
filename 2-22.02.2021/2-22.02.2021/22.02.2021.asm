.model small


.stack

N EQU 83

M EQU 4
SIZE EQU M*M

.data

SOURCE DW     'A', 'B', 'C', 'D',
       DW     'E', 'F', 'G', 'H',
       DW     'I', 'J', 'K', 'L',
       DW     'M', 'N', 'O', 'P'

DEST DW 16 DUP(?)

.code
.startup
        
        
        XOR SI,SI
        XOR DI,DI
        XOR CX,CX
        XOR DX,DX
        
        MOV CX,SIZE  
        
        MOV DX,N
        AND DX,3
        MOV AX,M*2
        MUL DX   
        
        MOV DI,AX 
        XOR AX,AX
        
LP:     MOV BX,SOURCE[SI]  
        CMP DI, SIZE*2
        JL  NEXT    
        
        SUB DI,SIZE*2
        
        
        
NEXT:   MOV DEST[DI],BX 
        
        ADD SI,2
        ADD DI,2
        
        LOOP LP


.exit
endp