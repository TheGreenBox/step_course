/* ========================================================
 * Organization: The Green Box
 *
 * Project name: Satellite stepper drive
 * File name:    synchronized_control.h
 * Description:  Module for control interrupt functions
 * ========================================================
 */
#include <PeripheralHeaderIncludes.h>

#include "synchronized_control.h"
#include "state.h"
#include "control_algo.h"
#include "timers.h"
#include "pwm_wrap_module.h"

void syncControlInterruptHadler(void) {
    if (gState.motorControl.rotationDirection == 0) {
        stop();
    }
    else {
        step(gState.motorControl.rotationDirection);
    }
}

void enableSyncControl() {
    setTimerIntrHandler(0, &syncControlInterruptHadler);
}

void disableSyncControl() {
    clearTimerIntrHandler(0);
}
