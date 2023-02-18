.model small




.stack

N EQU 4
SIZE EQU N*N

.data

SOURCE  DW   -10,	-20,	-100,	-10000
        DW   -1,	-12000,	-3,		-2
        DW   -9000,	-12345,	-999,	-30000
        DW   -126,	-19999,	-1,		-32000 

MAPP    DW SIZE DUP(?)
        
CROSS   DW 1 DUP(?)        
        
        
        
.code
.startup
       
        
            XOR CX,CX
            XOR SI,SI
            XOR DI,DI
            MOV CX,SIZE
            
LP:         MOV AX,SOURCE[SI]
            CMP AH,0XFF
            JL  VAL_ZERO 
            
            ADD CROSS,AX
            MOV MAPP[SI],-1
            JMP PRE_LP
            

VAL_ZERO:   MOV MAPP[SI],0     
            
PRE_LP:     ADD SI,2 
            LOOP LP 
        
        
        
        
        
        
        

.exit
endp