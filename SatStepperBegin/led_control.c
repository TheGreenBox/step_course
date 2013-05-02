/* ========================================================
 * Organization: The Green Box
 * 
 * Project name: Satellite stepper drive
 * File name:  led_control.c 
 * Description: Module for controlling STATUS LED, LED2, 
 * LED3
 * Author: SNikitin
 * ========================================================
 */

//functions turning LEDs on or off
void setGreenStatusLed (int setState)
{
    if setState == 0
    {
        GpioDataRegs.GPASET.bit.GPIO22   = 0;
        GpioDataRegs.GPACLEAR.bit.GPIO22 = 1;
    }
    else
    {
        GpioDataRegs.GPACLEAR.bit.GPIO22 = 0;
        GpioDataRegs.GPASET.bit.GPIO22   = 1;
    }
}

void setRedLed2 (int setState)
{
    if setState == 0
    {
        GpioDataRegs.GPASET.bit.GPIO31   = 0;
        GpioDataRegs.GPACLEAR.bit.GPIO31 = 1;
    }
    else
    {
        GpioDataRegs.GPACLEAR.bit.GPIO31 = 0;
        GpioDataRegs.GPASET.bit.GPIO31   = 1;
    }
}

void setRedLed3 (int setState)
{
    if setState == 0
    {
        GpioDataRegs.GPBSET.bit.GPIO32   = 0;
        GpioDataRegs.GPBCLEAR.bit.GPIO32 = 1;
    }
    else
    {
        GpioDataRegs.GPBCLEAR.bit.GPIO32 = 0;
        GpioDataRegs.GPBSET.bit.GPIO32   = 1;
    }
}

//functions turning toggling LEDs' state
void toggleGreenStatusLed (int setState);
{
    if setState == 0
    {
        GpioDataRegs.GPATOGGLE.bit.GPIO22 = 0;
    }
    else
    {
        GpioDataRegs.GPATOGGLE.bit.GPIO22 = 1;
    }
}

void toggleRedLed2 (int setState);
{
    if setState == 0
    {
        GpioDataRegs.GPATOGGLE.bit.GPIO31 = 0;
    }
    else
    {
        GpioDataRegs.GPATOGGLE.bit.GPIO31 = 1;
    }
}
void toggleRedLed3 (int setState);
{
    if setState == 0
    {
        GpioDataRegs.GPBTOGGLE.bit.GPIO32 = 0;
    }
    else
    {
        GpioDataRegs.GPBTOGGLE.bit.GPIO32 = 1;
    }
}