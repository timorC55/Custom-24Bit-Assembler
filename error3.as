; file ps3.as

.entry LOOP
.extern TABLE

LOOP:       lea     TABLE, r2     
            mov     r2, r3,r1       
            cmpgg     r3, #0     
            bneg     CONT          
            clrg     r3           
CONT:       incg     r2            
            jmp     &EXIT         
EXIT:       stop

XDATA:      .data   10, 20, -5
STR7:       .string "PS3"
