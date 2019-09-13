################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/Profiler/profile.c \
../source/Profiler/region.c 

OBJS += \
./source/Profiler/profile.o \
./source/Profiler/region.o 

C_DEPS += \
./source/Profiler/profile.d \
./source/Profiler/region.d 


# Each subdirectory must supply rules for building sources it contributes
source/Profiler/%.o: ../source/Profiler/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DDEBUG -DFRDM_KL25Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__NEWLIB__ -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -I../drivers -I../utilities -I../CMSIS -I../CMSIS_driver -I../board -I../source -I../ -I../startup -Os -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

