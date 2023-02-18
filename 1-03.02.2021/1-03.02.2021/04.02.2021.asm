.model small



.stack

N EQU 3
SIZE EQU N*N


.data

SOURCE  DW  1, 2, 3
        DW  4, 5, 6
        DW  7, 8, 9 
        
DESTINATION DW 9 DUP(?)


.code
.startup

        XOR CX,CX 
        XOR SI,SI
        XOR DI,DI
        MOV CX,SIZE
        
        MOV DI,N*2
        
LP:     MOV AX,SOURCE[SI]
        
        CMP DI,SIZE*2
        JL NEXT
     
        SUB DI, SIZE*2
     
        
NEXT:   ADD AX,SOURCE[DI]
        
        ADD DESTINATION[SI],AX 
        
        ADD SI,2
        ADD DI,2
        
        LOOP LP
        


.exit
endp