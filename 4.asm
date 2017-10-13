MOV C, date   
MOV D, 232
CALL ab        
date: 
   DB "28/11" 
   DB 0	 
ab:			
   PUSH A
   PUSH B
   MOV B, 0
bc:
   MOV A, [C]
   MOV [D], A	
   INC C
   INC D  
   CMP B, [C]	
   JNZ bc	
   hlt
