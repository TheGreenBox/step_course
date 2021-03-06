/* =================================================================================
File name:  2xDC_Motor-Settings.H

Originator:	Digital Control Systems Group
			Texas Instruments

Description:
Incremental Build Level control file.
=====================================================================================
 History:
-------------------------------------------------------------------------------------
 07-28-2010	Version 1.0
=================================================================================  */
#ifndef PROJ_SETTINGS_H

/*------------------------------------------------------------------------------
Following is the list of the Build Level choices.
------------------------------------------------------------------------------*/
#define LEVEL1  1      		// Module check out (do not connect the motors)
#define LEVEL2  2           // Verify ADC, calibrate the offset
#define LEVEL3  3           // Verify closed current(torque) loop
#define LEVEL4  4           // Run 2 axes closed current(torque) loop
/*------------------------------------------------------------------------------
This line sets the BUILDLEVEL to one of the available choices.
------------------------------------------------------------------------------*/
#define   BUILDLEVEL LEVEL1


#ifndef BUILDLEVEL
#error  Critical: BUILDLEVEL must be defined !!
#endif  // BUILDLEVEL
//------------------------------------------------------------------------------


#ifndef TRUE
#define FALSE 0
#define TRUE  1
#endif

#define PI 3.14159265358979

// Define the system frequency (MHz)
#if (DSP2803x_DEVICE_H==1)
#define SYSTEM_FREQUENCY 60
#elif (DSP280x_DEVICE_H==F2808)
#define SYSTEM_FREQUENCY 100
#endif

// Define the ISR frequency (kHz)
#define ISR_FREQUENCY 10

// Select the motor
#define Motor 1

//not used for this project.  Save for future use
//#define POLES   8						// Number of poles

// Define the base quantites
#define BASE_VOLTAGE    66.32		    // Base peak phase voltage (volt), maximum measurable DC Bus
#define BASE_CURRENT    7.2            	// Base peak phase current (amp) , maximum measurable peak current
//not used for this project.  Save for future use
//#define BASE_FREQ      	200           	// Base electrical frequency (Hz)

#endif
