; This file contains defined constants for SCSP registers, mem addresses, etc.

; The M68K runs at 11.3 MHz, and the SCSP+DSP runs at 22.6 MHz

; --- Memory map from inside the sound subsystem address space ---
;     These are the addresses as seen by the 68K/SCSP, in contrast to the
;     offset address range the main system SH-2s would use through the SCU.

; --- Sound DRAM ---
base_SRAM_START         equ $000000
size_SRAM_TOTAL         equ $080000      ; total sound DRAM is 4Mbit (512KB)

size_SRAM_68K_VEC_TBL   equ $400         ; first 1KB is reserved for the 68K vector table
base_SRAM_68K_PROG      equ $000400      ; start of the 68k sound program
; Set the stack to be $400 (1KB) in size and start $400 (1KB) from the end of sound RAM.
; The 68K stack grows "downward" in memory, so it will start at $07FC00 and
; can "grow" (in reverse) up to $07F800.
size_SRAM_68K_STACK     equ $400         ; Total size of the 68k stack area
offset_SRAM_68K_STACK   equ $400         ; Offset in bytes from the end of sound RAM for bottom of stack
base_SRAM_68K_STACK     equ size_SRAM_TOTAL-offset_SRAM_68K_STACK
end_SRAM_68K_STACK      equ base_SRAM_68K_STACK-size_SRAM_68K_STACK

; --- SCSP Register Map ---
size_SCSP_SLOT_UNIT     equ $20         ; Size of a single slot ISR (including unused bits)

base_SCSP_ISR           equ $100000     ; SCSP Individual Slot Control Register (ISRs) (508W)
base_SCSP_CCR           equ $100400     ; SCSP Common Control Register (24W)
base_SCSP_SND_STACK     equ $100600     ; SCSP Sound Data Stack (64W)
base_SCSP_DSP_CTRL      equ $100700     ; SCSP DSP Control Register (1010W)

; --- Common Control Register - Individual Reg Addresses ---
reg_SCSP_M4D8           equ base_SCSP_CCR       ; Bit 0 is DAC18B (set to 0), bit 1 is MEM4MB (set to 1)
reg_SCSP_MVOL           equ base_SCSP_CCR+$1    ; Master volume. Set bits 3:0.
; TODO :: Add full CCR register list as needed

; vim: ft=asm68k