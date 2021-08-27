//
// Created by adean on 8/23/21.
//

#include "snd_driver.h"

// TODO :: The init function should probably return an int for relaying back error codes
void snddrv_init(void)
{
    // TODO :: Load 68k driver binary from a filesystem or header include

    // Write 0x01 to the SMPC status flag register to signify that we're executing a command
    SMPC_REG_SF = 0x1;
    // Tell SMPC to shut down the sound system by writing the command hex value to COMREG
    SMPC_REG_COMREG = SMPC_CMD_SNDOFF;
    // Idle until the SMPC command completes (it will clear the SF register)
    while (SMPC_REG_SF & 0x1) {}

    // TODO :: Zero-clear sound RAM

    // TODO :: Set SMPC 4MBit, 18BDAC, and master vol registers on SMPC

    // TODO :: Transfer sound driver to start of sound RAM
    // TODO :: Transfer wave/sequence/patch banks and DSP program to sound RAM

    // TODO :: Command SMPC to start the sound system with the SNDON command
    SMPC_REG_SF = 0x1;
    SMPC_REG_COMREG = SMPC_CMD_SNDON;
    while (SMPC_REG_SF & 0x1) {}

    // TODO :: Check to ensure sound driver is runnning and not reporting errors
}

void snddrv_play_test(void) {

}

void snddrv_stop_test(void) {

}