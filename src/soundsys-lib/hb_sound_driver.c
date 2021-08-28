//
// Created by adean on 8/23/21.
//

#include "hb_sound_driver.h"

// TODO :: The init function should probably return an int for relaying back error codes
void hb_soundsys_init(void)
{
    // TODO :: Load 68k driver binary from a filesystem or header include

    // Command the SMPC to stop the sound system with the SNDOFF command
    hb_smpc_issue_cmd(hb_SMPC_CMD_SNDOFF);

    // TODO :: Zero-clear sound RAM (in the future this will be done via SCU DMA)
    hb_soundsys_clear_ram();

    // TODO :: Set SMPC 4MBit, 18BDAC, and master vol registers on SMPC

    // TODO :: Transfer sound driver to start of sound RAM
    // TODO :: Transfer wave/sequence/patch banks and DSP program to sound RAM

    // TODO :: Command SMPC to start the sound system with the SNDON command
    hb_smpc_issue_cmd(hb_SMPC_CMD_SNDON);

    // TODO :: Check to ensure sound driver is runnning and not reporting errors
}

void hb_smpc_issue_cmd(unsigned char smpc_cmd)
{
    // Write 0x01 to the SMPC status flag register to signify that we're executing a command
    hb_SMPC_REG_SF = 0x01;
    // Tell SMPC to execute a given command by writing its hex value to the COMREG
    hb_SMPC_REG_COMREG = smpc_cmd;

    while (hb_SMPC_REG_SF & 0x01) {
        /* idle until SF register on SMPC returns to 0, signalling the command completed. */
    }
}

void hb_soundsys_clear_ram(void)
{
#if hb_USE_DMA = 1
    // TODO :: Write code to perform operation using much faster SCU DMA transfer
#else
    // TODO :: Need to test this on a Saturn FW instead of SlDMACopy, etc. to ensure it works
    for (int cur_word = 0; cur_word < 0x80000; cur_word += 2) {
        // SH2->SCU->sound system direct transfers should be 16-bit values
        *hb_SNDRAM_PTR[i * 2] = 0x0000;
    }
#endif
}

void hb_soundsys_play_test(void)
{

}

void hb_soundsys_stop_test(void)
{

}