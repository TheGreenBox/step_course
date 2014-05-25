/* ========================================================
 * Organization: The Green Box
 *
 * Project name: Satellite stepper drive
 * File name:    main.c
 * Description:
 * ========================================================
 */

#include <PeripheralHeaderIncludes.h>
#include "pwm_wrap_module.h"
#include "algo_types.h"
#include "control_algo.h"
#include "led_control.h"
#include "init.h"
#include "control_modules/synchronized_control.h"
#include "control_modules/feedback_control.h"
#include "elementary_motions.h"
#include "timers.h"
#include "state.h"

void init() {
    deviceInit();
    initPwm();
    stateInit();
    timersInit();
    setTimerPeriodByNum(0, 20000);
    setTimerPeriodByNum(1, 20000);

    enableGlobalInterrupts();

    setGreenStatusLed(1);
}

static void debugCalibration() {
    enableSyncControl();

    uint32_t ticker = 0;
    while (ticker < 1000000) {
        ++ticker;
    }
    disableSyncControl();

    enableFeedbackControl();
    while (ticker < 1000000) {
        ++ticker;
    }

    step(1);
}

void mainLoop() {
    // until dont have current feedback
    setPwm(MAX_PWM / 30);


    // just for testing
    debugCalibration();

    encoderCalibrating();
    while (1) {
        // Put here debug functions
        // For instance - function for simulate input signal
    }
}

int main(void) {
    init();

    activate_pwm_driver();
    setAlgoType(gConfig.algoType);

    mainLoop();

    return 0;
}
