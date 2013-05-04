/* ========================================================
 * Organization: The Green Box
 * 
 * Project name: Satellite stepper drive
 * File name:  SatStepperBegin/control_timer.c 
 * Description:
 * Author:  AKindyakov 
 * ========================================================
 */

#include <PeripheralHeaderIncludes.h>
#include <f2803xbmsk.h>
#include "control_timer.h"


typedef void (* _controlTimerInterruptHandler)(void);

void timer_init( _pwmTimerInterruptHandler )
{
    CpuTimer1Regs.TIM
    CpuTimer1Regs.PRD.all = 
    CpuTimer1Regs.TCR.all = 
    CpuTimer1Regs.TPR
    CpuTimer1Regs.TPRH
}
