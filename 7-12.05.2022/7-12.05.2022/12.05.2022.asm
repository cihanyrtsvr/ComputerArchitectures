.model small




.stack

N EQU 12
SIZE EQU N*N



.data

SOURCE DB 1,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,2,3,4,5,6,7,8,9,10,11
       DB 0,1,1,3,4,5,6,7,8,9,10,11
       DB 0,1,2,1,4,5,6,7,8,9,10,11
       DB 0,1,2,3,1,5,6,7,8,9,10,11
       DB 0,1,2,3,4,1,6,7,8,9,10,11
       DB 0,1,2,3,4,5,1,7,8,9,10,11
       DB 0,1,2,3,4,5,6,1,8,9,10,11
       DB 0,1,2,3,4,5,6,7,1,9,10,11
       DB 0,1,2,3,4,5,6,7,8,1,10,11
       DB 0,1,2,3,4,5,6,7,8,9,1,11
       DB 0,1,2,3,4,5,6,7,8,9,10,1   

RESULT DW 1 DUP(?)


.code
.startup
        
        XOR SI,SI
        XOR DI,DI
        XOR CX,CX
        MOV DX,12
        MOV CX,N
        XOR BX,BX
        
LP:     MOV BL,SOURCE[SI]
        MOV AX,SI
        DIV DL
        MOV AL,AH
        XOR AH,AH   
        
        XCHG AX,BX
        
        MUL BL
        MUL BL
        
        ADD RESULT,AX
        ADD SI,N+1
        ;IS 25345 SO IT CAN BE REPRESSENTED IN 8 BITS
        LOOP LP

.exit

endp