.model small

.stack

N EQU 9
SIZE EQU N*N



.data

XFIELD      	DW  'C',	'D',	'D',	'F',	'K',	'K',	'J',	'Z',	'A'
            	DW  'B',	'A',	'B',	'D',	'H',	'G',	'R',	'K',	'K'
            	DW  'O',   	'O',	'P',	'U',	'Y',	'R',	'E',	'V',	'R'
            	DW  'W',	'W',	'W',	'W',	'F',	'R',	'Y',	'R',	'S'
            	DW  'T',	'T',	'T',	'T',	'T',	'T',	'T',	'O',	'P'
            	DW  'Z',	'X',	'C',	'V',	'B',	'N',	'M',	'N',	'B'
            	DW  'D',	'S',	'E',	'H',	'T',	'U',	'I',	'U',	'X'
            	DW  'R',	'A',	'R',	'T',	'S',	'W',	'A',	'K',	'U'
            	DW  'Q',	'W',	'E',	'R',	'T',	'Y',	'U',	'I',	'P'

XPOSITION   DW 4 DUP(0)
XDIAG       DW 4 DUP(0)

.code
.startup
            
            
            XOR SI,SI
            XOR DI,DI
            XOR CX,CX
            
            MOV CX,SIZE     ;Size of the matrix is assigned to cx to impliment a loop that allows me to check the values
            
            
LP:         MOV AX,XFIELD[SI]
            
            CMP AX,65	    ;Comperin taken element of XFIELD with the decimal value of ASCII 'A' if not goes to next element 
            JNE NEXT
            
            PUSH SI	        ;To not lost the SI DW index   
            SHR SI,1 	    ;The SI is shifted right so the real index is obtained
            
            MOV XPOSITION[DI],SI  ;The position of the 'A' is uploaded on Xposition 
            
            AND SI,7 	    ;the least significant 3 bits will be checked for i+j=8, which means the index is on diagonal and we it will always have 0 at least significant 3 bits(on 8 div reminder). 
            
            CMP SI,0	    ; the reminder(least significant 3 bits) check 
            JNE Z_DIAG
            
            MOV XDIAG[DI],1
            POP SI
            ADD DI,2	    ;increasing DI for next 'A' check value
            JMP NEXT
            
Z_DIAG:     MOV XDIAG[DI],0 
            
            ADD DI,2 	    ;increasing DI for next 'A' check value
            POP SI
            
NEXT:       
            ADD SI,2	    ;increasing the SI by 2 to cut by row
            
           LOOP LP  	    ;loop to go LP
           
.exit
endp
