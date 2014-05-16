/* ========================================================
 * Organization: The Green Box
 *
 * Project name: Satellite stepper drive
 * File name:  SatStepperBegin/state.h
 * Description:
 * ========================================================
 */

#ifndef _GLOBAL_STATE_H_
#define _GLOBAL_STATE_H_

#define __ASSERT_CONCAT(a, b) a##b
#define STATIC_ASSERT(e) \
    enum { __ASSERT_CONCAT(static_assert_, __LINE__) = 1/(!!(e)) }

#define ASSERT(condition, event) \
    if (condition) { \
        event; \
    }

#include <stdint.h>

#define MAX_PWM_DUTY 1024

typedef struct _MotorControl {
    unsigned    pwmDutyCycle;
    uint32_t    stepTimeoutUsec;
    short       rotationDirection;		// 1 or -1 or 0
} MotorControl;

typedef struct _EncoderCounts {
    int32_t raw;
    int32_t precise;
    short int  direction;
    uint16_t invSpeed;
#ifdef DEBUG
    unsigned int errors;
#endif // DEBUG
} EncoderCounts;

typedef struct _GlobalState {
    long long systemTimer;
    long long stepTicker;
    MotorControl motorControl;
    EncoderCounts encoder;
    uint_fast16_t adc[5];
} GlobalState;

extern volatile GlobalState gState;

typedef struct _GlobalConfig {
    uint_fast16_t   pwmPeriod;
    uint_fast8_t    algoType;
} GlobalConfig;

extern const GlobalConfig gConfig;

#endif //_GLOBAL_STATE_H_
