################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/cmd/DSP2803x_Headers_nonBIOS.cmd 

CMD_UPPER_SRCS += \
../F28035_RAM_2xDC_Motor.CMD 

LIB_SRCS += \
/home/alexander/source/step_cource/libs/math/IQmath/v15c/lib/IQmath.lib 

ASM_SRCS += \
../DLOG4CHC.asm \
../DSP2803x_usDelay.asm 

C_SRCS += \
../2xDC_Motor-DevInit_F2803x.c \
../2xDC_Motor.c \
/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c 

OBJS += \
./2xDC_Motor-DevInit_F2803x.obj \
./2xDC_Motor.obj \
./DLOG4CHC.obj \
./DSP2803x_GlobalVariableDefs.obj \
./DSP2803x_usDelay.obj 

ASM_DEPS += \
./DLOG4CHC.pp \
./DSP2803x_usDelay.pp 

C_DEPS += \
./2xDC_Motor-DevInit_F2803x.pp \
./2xDC_Motor.pp \
./DSP2803x_GlobalVariableDefs.pp 

C_DEPS__QUOTED += \
"2xDC_Motor-DevInit_F2803x.pp" \
"2xDC_Motor.pp" \
"DSP2803x_GlobalVariableDefs.pp" 

OBJS__QUOTED += \
"2xDC_Motor-DevInit_F2803x.obj" \
"2xDC_Motor.obj" \
"DLOG4CHC.obj" \
"DSP2803x_GlobalVariableDefs.obj" \
"DSP2803x_usDelay.obj" 

ASM_DEPS__QUOTED += \
"DLOG4CHC.pp" \
"DSP2803x_usDelay.pp" 

C_SRCS__QUOTED += \
"../2xDC_Motor-DevInit_F2803x.c" \
"../2xDC_Motor.c" \
"/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c" 

ASM_SRCS__QUOTED += \
"../DLOG4CHC.asm" \
"../DSP2803x_usDelay.asm" 


