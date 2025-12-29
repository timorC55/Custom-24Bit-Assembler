; file ps2.as

.entry OPEN
.extern EXT_SUB

OPEN:       mov     #2, r5       
            jsr     EXT_SUB       
            cmp     r5, #2        
            bne     EXIT        
            add     #5, r5       
EXIT:       stop

MYDATA:     .data   -1, 2, 3, 4
STR6:       .string "PS2"
