#ifndef SATURN_HELLO_BEEP_SND_DRIVER_H
#define SATURN_HELLO_BEEP_SND_DRIVER_H

#define SMPC_REG_IREG(n)    *((volatile unsigned char *)0x20100001+((i) * 2))
#define SMPC_REG_COMREG     *((volatile unsigned char *)0x2010001F)
#define SMPC_REG_SR         *((volatile unsigned char *)0x20100061)
#define SMPC_REG_SF         *((volatile unsigned char *)0x20100063)

#define SMPC_CMD_SNDON      0x06
#define SMPC_CMD_SNDOFF     0x07

#define SNDRAM_START_ADDR   0x25A00000

void snddrv_init(void);
void snddrv_play_test(void);
void snddrv_stop_test(void);

#endif //SATURN_HELLO_BEEP_SND_DRIVER_H
