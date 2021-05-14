################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_3.1.1/platform/service/system/src/subdir.mk
-include gecko_sdk_3.1.1/platform/service/device_init/src/subdir.mk
-include gecko_sdk_3.1.1/platform/emlib/src/subdir.mk
-include gecko_sdk_3.1.1/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/subdir.mk
-include gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: barastori.axf

# Tool invocations
barastori.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "C:\Users\Dagur\SimplicityStudio\v5_workspace\barastori/autogen/linkerfile.ld" -Xlinker --gc-sections -Xlinker -Map="barastori.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o barastori.axf -Wl,--start-group "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/GCC/startup_bgm13.o" "./gecko_sdk_3.1.1/platform/Device/SiliconLabs/BGM13/Source/system_bgm13.o" "./gecko_sdk_3.1.1/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_acmp.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_adc.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_aes.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_assert.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_burtc.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_can.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_cmu.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_cmu_fpga.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_core.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_cryotimer.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_crypto.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_csen.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_dac.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_dbg.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_dma.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_ebi.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_emu.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_eusart.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_gpcrc.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_gpio.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_i2c.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_iadc.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_idac.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_lcd.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_ldma.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_lesense.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_letimer.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_leuart.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_msc.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_opamp.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_pcnt.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_pdm.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_prs.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_qspi.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_rmu.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_rtc.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_rtcc.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_se.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_system.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_timer.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_usart.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_vcmp.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_vdac.o" "./gecko_sdk_3.1.1/platform/emlib/src/em_wdog.o" "./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_dcdc_s1.o" "./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_emu_s1.o" "./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_hfxo_s1.o" "./gecko_sdk_3.1.1/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_3.1.1/platform/service/system/src/sl_system_init.o" "./gecko_sdk_3.1.1/platform/service/system/src/sl_system_process_action.o" "./main.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: barastori.hex'
	arm-none-eabi-objcopy -O ihex "barastori.axf" "barastori.hex"
	@echo ' '

	@echo 'Building bin file: barastori.bin'
	arm-none-eabi-objcopy -O binary "barastori.axf" "barastori.bin"
	@echo ' '

	@echo 'Building s37 file: barastori.s37'
	arm-none-eabi-objcopy -O srec "barastori.axf" "barastori.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "barastori.axf" -A
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) barastori.axf
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
