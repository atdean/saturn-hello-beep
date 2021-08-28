#ifndef HB_SOUND_DRIVER_H
#define HB_SOUND_DRIVER_H

#define hb_USE_DMA              0 /* Temporary, until I implement DMA transfers */

// SMPC (System Manager + Peripheral Control chip) registers and constants
#define hb_SMPC_REG_IREG(n)     *((volatile unsigned char *)0x20100001+((i) * 2))
#define hb_SMPC_REG_COMREG      *((volatile unsigned char *)0x2010001F)
#define hb_SMPC_REG_SR          *((volatile unsigned char *)0x20100061)
#define hb_SMPC_REG_SF          *((volatile unsigned char *)0x20100063)

#define hb_SMPC_CMD_SNDON       0x06
#define hb_SMPC_CMD_SNDOFF      0x07

// Sound RAM addresses and sizes/offsets
#define hb_SNDRAM_START_ADDR    0x25A00000
#define hb_SNDRAM_PTR           ((volatile unsigned char *)hb_SNDRAM_START_ADDR)
#define hb_SNDRAM_SIZE          0x80000 /* 4MBit (512KB) total Sound DRAM size */

// SCSP (SEGA Custom Sound Processor chip) registers and constants


void hb_soundsys_init(void);
void hb_smpc_issue_cmd(unsigned char smpc_cmd);
void hb_soundsys_clear_ram(void);
void hb_soundsys_play_test(void);
void hb_soundsys_stop_test(void);

#endif //HB_SOUND_DRIVER_H
