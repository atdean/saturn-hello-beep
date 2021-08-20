    INCLUDE "header.i"

entry_point:
    nop
    jmp     entry_point

ignore_handler:
    rte                         ; immediately return from the exception/interrupt

__end:

; vim: ft=asm68k
