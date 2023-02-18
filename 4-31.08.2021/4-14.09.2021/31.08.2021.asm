.model small




.stack

N EQU 5
M EQU 8
SIZE EQU N*M

.data

SOURCE  DW  1, 2, 3, 4, 5 
        DW  6, 7, 8, 9, 0
        DW  9, 8, 7, 6, 5
        DW  4, 3, 2, 1, 0
        DW  7, 7, 7, 7, 7
        DW  3, 5, 7, 9, 0
        DW  8, 7, 6, 5, 4
        DW  9, 9, 9, 3, 2
        
RESULT DW 1 DUP(?)

.code
.startup

        XOR SI,SI
        XOR DI,DI
        XOR CX,CX
        MOV CX,SIZE
        
LP:     ADD AX,SOURCE[SI]
        ADD SI,4
        CMP SI, SIZE*2
        JL NEXT
        JG NEXT
        
        MOV RESULT,AX
        XOR AX,AX
        SUB SI,SIZE*2-2
        
NEXT:   LOOP LP        
        
        SUB RESULT,AX

.exit

endp