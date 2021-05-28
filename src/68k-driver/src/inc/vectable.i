; This should start at $000000 and occupy the first 1024 bytes (1KB) in RAM
interrupt_vector_table:
    dc.l    $00FFFFFE           ; Reset vector initial stack pointer address
    dc.l    entry_point         ; Reset vector initial PC address
    dc.l    ignore_handler      ; Bus error
    dc.l    ignore_handler      ; Address error
    dc.l    ignore_handler      ; Illegal instruction
    dc.l    ignore_handler      ; Division by zero
    dc.l    ignore_handler      ; CHK exception
    dc.l    ignore_handler      ; TRAPV exception
    dc.l    ignore_handler      ; Privilege violation
    dc.l    ignore_handler      ; TRACE exception
    dc.l    ignore_handler      ; Line-A (1010) emulator
    dc.l    ignore_handler      ; Line-F (1111) emulator
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Uninitialized interrupt vector
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Spurious exception
    dc.l    ignore_handler      ; Auto vector lv1 INT
    dc.l    ignore_handler      ; Auto vector lv2 INT
    dc.l    ignore_handler      ; Auto vector lv3 INT
    dc.l    ignore_handler      ; Auto vector lv4 INT
    dc.l    ignore_handler      ; Auto vector lv5 INT
    dc.l    ignore_handler      ; Auto vector lv6 INT
    dc.l    ignore_handler      ; Auto vector lv7 INT
    dc.l    ignore_handler      ; TRAP #00 exception
    dc.l    ignore_handler      ; TRAP #01 exception
    dc.l    ignore_handler      ; TRAP #02 exception
    dc.l    ignore_handler      ; TRAP #03 exception
    dc.l    ignore_handler      ; TRAP #04 exception
    dc.l    ignore_handler      ; TRAP #05 exception
    dc.l    ignore_handler      ; TRAP #06 exception
    dc.l    ignore_handler      ; TRAP #07 exception
    dc.l    ignore_handler      ; TRAP #08 exception
    dc.l    ignore_handler      ; TRAP #09 exception
    dc.l    ignore_handler      ; TRAP #10 exception
    dc.l    ignore_handler      ; TRAP #11 exception
    dc.l    ignore_handler      ; TRAP #12 exception
    dc.l    ignore_handler      ; TRAP #13 exception
    dc.l    ignore_handler      ; TRAP #14 exception
    dc.l    ignore_handler      ; TRAP #15 exception
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; Unused (reserved)
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector
    dc.l    ignore_handler      ; User interrupt vector

; vim: ft=asm68k