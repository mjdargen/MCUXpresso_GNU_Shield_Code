################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/LCD/LCD_graphics.c \
../source/LCD/LCD_text.c \
../source/LCD/ST7789.c \
../source/LCD/T6963.c \
../source/LCD/lucida_12x19.c \
../source/LCD/lucida_20x31.c \
../source/LCD/lucida_8x13.c \
../source/LCD/touchscreen.c 

OBJS += \
./source/LCD/LCD_graphics.o \
./source/LCD/LCD_text.o \
./source/LCD/ST7789.o \
./source/LCD/T6963.o \
./source/LCD/lucida_12x19.o \
./source/LCD/lucida_20x31.o \
./source/LCD/lucida_8x13.o \
./source/LCD/touchscreen.o 

C_DEPS += \
./source/LCD/LCD_graphics.d \
./source/LCD/LCD_text.d \
./source/LCD/ST7789.d \
./source/LCD/T6963.d \
./source/LCD/lucida_12x19.d \
./source/LCD/lucida_20x31.d \
./source/LCD/lucida_8x13.d \
./source/LCD/touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
source/LCD/%.o: ../source/LCD/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DDEBUG -DFRDM_KL25Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__NEWLIB__ -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -I../drivers -I../utilities -I../CMSIS -I../CMSIS_driver -I../board -I../source -I../ -I../startup -Os -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


