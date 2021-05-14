################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.c \
../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.c \
../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.c \
../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.c 

OBJS += \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.o \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.o \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.o \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.o 

C_DEPS += \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.d \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.d \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.d \
./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.o: ../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM13S32F512GA=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\toolchain\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\Device\SiliconLabs\BGM13\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\emlib\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\device_init\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\system\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\CMSIS\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\config" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.d" -MT"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.o: ../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM13S32F512GA=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\toolchain\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\Device\SiliconLabs\BGM13\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\emlib\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\device_init\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\system\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\CMSIS\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\config" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.d" -MT"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.o: ../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM13S32F512GA=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\toolchain\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\Device\SiliconLabs\BGM13\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\emlib\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\device_init\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\system\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\CMSIS\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\config" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.d" -MT"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.o: ../gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM13S32F512GA=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\toolchain\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\Device\SiliconLabs\BGM13\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\emlib\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\device_init\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\system\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\CMSIS\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\config" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.d" -MT"gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


