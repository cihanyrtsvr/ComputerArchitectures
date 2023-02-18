.model small




.stack

N EQU 12
SIZE EQU N*N



.data

SOURCE DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11   

RESULT DW 1 DUP(?)


.code
.startup
        
        XOR SI,SI
        XOR DI,DI
        XOR CX,CX
        MOV DX, 12
        MOV CX,N
        
LP:     MOV BL,SOURCE[SI]
        MOV AX,SI
        DIV DL
        MOV AL,AH
        XOR AH,AH
        
        MUL BL
        MUL BL
        
        ADD RESULT,AX
        INC DI
        ADD SI,N+1
        
        LOOP LP

.exit

endp