################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.c 

OBJS += \
./gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.o 

C_DEPS += \
./gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.o: ../gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM13S32F512GA=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\toolchain\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\Device\SiliconLabs\BGM13\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\emlib\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\device_init\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\common\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\service\system\inc" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\gecko_sdk_3.1.1\platform\CMSIS\Include" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\config" -I"C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori\autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.d" -MT"gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


