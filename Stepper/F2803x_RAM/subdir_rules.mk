################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
DLOG4CHC.obj: ../DLOG4CHC.asm $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -g --include_path="/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="/home/alexander/source/step_cource/libs/math/IQmath/v15c/include" --include_path="/home/alexander/source/step_cource/development_kits/~SupportFiles/F2803x_headers" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/drivers/f2803x_v1.1" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/include" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_common/include" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/math_blocks/v2.1" --diag_warning=225 --preproc_with_compile --preproc_dependency="DLOG4CHC.pp" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_GlobalVariableDefs.obj: /home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -g --include_path="/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="/home/alexander/source/step_cource/libs/math/IQmath/v15c/include" --include_path="/home/alexander/source/step_cource/development_kits/~SupportFiles/F2803x_headers" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/drivers/f2803x_v1.1" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/include" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_common/include" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/math_blocks/v2.1" --diag_warning=225 --preproc_with_compile --preproc_dependency="DSP2803x_GlobalVariableDefs.pp" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_usDelay.obj: ../DSP2803x_usDelay.asm $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -g --include_path="/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="/home/alexander/source/step_cource/libs/math/IQmath/v15c/include" --include_path="/home/alexander/source/step_cource/development_kits/~SupportFiles/F2803x_headers" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/drivers/f2803x_v1.1" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/include" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_common/include" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/math_blocks/v2.1" --diag_warning=225 --preproc_with_compile --preproc_dependency="DSP2803x_usDelay.pp" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

Stepper-DevInit_F2803x.obj: ../Stepper-DevInit_F2803x.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -g --include_path="/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="/home/alexander/source/step_cource/libs/math/IQmath/v15c/include" --include_path="/home/alexander/source/step_cource/development_kits/~SupportFiles/F2803x_headers" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/drivers/f2803x_v1.1" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/include" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_common/include" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/math_blocks/v2.1" --diag_warning=225 --preproc_with_compile --preproc_dependency="Stepper-DevInit_F2803x.pp" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

Stepper.obj: ../Stepper.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -g --include_path="/home/alexander/ti/ccsv5/tools/compiler/c2000_6.1.0/include" --include_path="/home/alexander/source/step_cource/libs/math/IQmath/v15c/include" --include_path="/home/alexander/source/step_cource/development_kits/~SupportFiles/F2803x_headers" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/drivers/f2803x_v1.1" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_headers/include" --include_path="/home/alexander/source/step_cource/device_support/f2803x/v122/DSP2803x_common/include" --include_path="/home/alexander/source/step_cource/libs/app_libs/motor_control/math_blocks/v2.1" --diag_warning=225 --preproc_with_compile --preproc_dependency="Stepper.pp" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

