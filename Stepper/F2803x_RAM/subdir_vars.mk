################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/cmd/DSP2803x_Headers_nonBIOS.cmd 

CMD_UPPER_SRCS += \
../F28035_RAM_Stetpper.CMD 

LIB_SRCS += \
/home/alexander/source/step_cource/libs/math/IQmath/v15c/lib/IQmath.lib 

ASM_SRCS += \
../DLOG4CHC.asm \
../DSP2803x_usDelay.asm 

C_SRCS += \
/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c \
../Stepper-DevInit_F2803x.c \
../Stepper.c 

OBJS += \
./DLOG4CHC.obj \
./DSP2803x_GlobalVariableDefs.obj \
./DSP2803x_usDelay.obj \
./Stepper-DevInit_F2803x.obj \
./Stepper.obj 

ASM_DEPS += \
./DLOG4CHC.pp \
./DSP2803x_usDelay.pp 

C_DEPS += \
./DSP2803x_GlobalVariableDefs.pp \
./Stepper-DevInit_F2803x.pp \
./Stepper.pp 

C_DEPS__QUOTED += \
"DSP2803x_GlobalVariableDefs.pp" \
"Stepper-DevInit_F2803x.pp" \
"Stepper.pp" 

OBJS__QUOTED += \
"DLOG4CHC.obj" \
"DSP2803x_GlobalVariableDefs.obj" \
"DSP2803x_usDelay.obj" \
"Stepper-DevInit_F2803x.obj" \
"Stepper.obj" 

ASM_DEPS__QUOTED += \
"DLOG4CHC.pp" \
"DSP2803x_usDelay.pp" 

ASM_SRCS__QUOTED += \
"../DLOG4CHC.asm" \
"../DSP2803x_usDelay.asm" 

C_SRCS__QUOTED += \
"/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c" \
"../Stepper-DevInit_F2803x.c" \
"../Stepper.c" 


