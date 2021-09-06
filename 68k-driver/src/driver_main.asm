    INCLUDE "inc/header.i"

    ORG $000400 ; is this needed? the vector table will occupy exactly the first $400 bytes

entry_point:
    jmp    init_scsp

init_scsp:
    ; TODO :: 68K must wait approx 30µs after SMPC reset for SCSP to init registers

    ; TODO :: It seems these 3 flags should be set by the SH-2, need to confirm
    ; Configure SCSP for 4Mbit sound RAM, and 16-bit DAC output (retail Saturn hardware)
    move.l #reg_SCSP_M4D8,a0
    move.b #%00000010,(a0)
    ; Set SCSP master volume to -0db (no attenuation)
    move.l #reg_SCSP_MVOL,a0
    move.b #$0F,(a0)

driver_main_loop:
    bra.s  run_idle_loop ; for now, just idle until I start implementing functionality

; immediately return from the exception/interrupt
ignore_handler:
    rte

; this is just an infinite "no-op" loop. Temp utility function for testing.
run_idle_loop:
    nop
    bra.s  run_idle_loop

__end:

; vim: ft=asm68k
