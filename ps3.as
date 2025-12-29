; file ps3.as

.entry LOOP
.extern TABLE

LOOP:       lea     TABLE, r2     
            mov     r2, r3       
            cmp     r3, #0     
            bne     CONT          
            clr     r3           
CONT:       inc     r2            
            jmp     &EXIT         
EXIT:       stop

XDATA:      .data   10, 20, -5
STR7:       .string "PS3"
