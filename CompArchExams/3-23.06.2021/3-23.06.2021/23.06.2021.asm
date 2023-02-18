.model small


.stack

N EQU 5

SIZE EQU N*N

.data

SOURCE DW   1, 2, 3, 4, 5
       DW   6, 7, 8, 9, 0
       DW   9, 8, 7, 6, 5
       DW   4, 3, 2, 1, 0
       DW   7, 7, 7, 7, 7

RESULT DW 1 DUP(?)


.code
.startup

        XOR SI,SI
        XOR DI,DI
        XOR CX,CX
        
DIA:    MOV CX,N        
        ADD AX,SOURCE[SI]
        
        
        CMP SI,SIZE*2-2
        JGE  ALL_CEL
        ADD SI,N*2+2
        JMP DIA
        
ALL_CEL:
        SUB SI,SIZE*2-2
        
AG_LP:  MOV CX,5 
        ADD SI,2  

CELL:      
        ADD BX,SOURCE[SI] 
        ADD SI,2 
        LOOP CELL
        CMP SI,SIZE*2-2 
        JL  AG_LP
        
        SUB BX,AX   
        MOV RESULT,BX
        
        
        
        





.exit
endp