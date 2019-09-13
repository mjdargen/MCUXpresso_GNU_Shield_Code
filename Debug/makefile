################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include source/Profiler/subdir.mk
-include source/LCD/subdir.mk
-include source/subdir.mk
-include CMSIS/RTX5/subdir.mk
-include CMSIS/subdir.mk
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
all: MCUXpresso_GNU_Shield_Code.axf

# Tool invocations
MCUXpresso_GNU_Shield_Code.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\Michael\Documents\MCUXpressoIDE_11.0.1_2563\workspace\MCUXpresso_GNU_Shield_Code\CMSIS\RTX5" -Xlinker -Map="MCUXpresso_GNU_Shield_Code.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T "MCUXpresso_GNU_Shield_Code_Debug.ld" -o "MCUXpresso_GNU_Shield_Code.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) MCUXpresso_GNU_Shield_Code.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "MCUXpresso_GNU_Shield_Code.axf"; # arm-none-eabi-objcopy -v -O binary "MCUXpresso_GNU_Shield_Code.axf" "MCUXpresso_GNU_Shield_Code.bin" ; # checksum -p MKL25Z128xxx4 -d "MCUXpresso_GNU_Shield_Code.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
