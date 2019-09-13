################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/RTX5/RTX_Config.c \
../CMSIS/RTX5/rtx_delay.c \
../CMSIS/RTX5/rtx_evflags.c \
../CMSIS/RTX5/rtx_evr.c \
../CMSIS/RTX5/rtx_kernel.c \
../CMSIS/RTX5/rtx_lib.c \
../CMSIS/RTX5/rtx_memory.c \
../CMSIS/RTX5/rtx_mempool.c \
../CMSIS/RTX5/rtx_msgqueue.c \
../CMSIS/RTX5/rtx_mutex.c \
../CMSIS/RTX5/rtx_semaphore.c \
../CMSIS/RTX5/rtx_system.c \
../CMSIS/RTX5/rtx_thread.c \
../CMSIS/RTX5/rtx_timer.c 

OBJS += \
./CMSIS/RTX5/RTX_Config.o \
./CMSIS/RTX5/rtx_delay.o \
./CMSIS/RTX5/rtx_evflags.o \
./CMSIS/RTX5/rtx_evr.o \
./CMSIS/RTX5/rtx_kernel.o \
./CMSIS/RTX5/rtx_lib.o \
./CMSIS/RTX5/rtx_memory.o \
./CMSIS/RTX5/rtx_mempool.o \
./CMSIS/RTX5/rtx_msgqueue.o \
./CMSIS/RTX5/rtx_mutex.o \
./CMSIS/RTX5/rtx_semaphore.o \
./CMSIS/RTX5/rtx_system.o \
./CMSIS/RTX5/rtx_thread.o \
./CMSIS/RTX5/rtx_timer.o 

C_DEPS += \
./CMSIS/RTX5/RTX_Config.d \
./CMSIS/RTX5/rtx_delay.d \
./CMSIS/RTX5/rtx_evflags.d \
./CMSIS/RTX5/rtx_evr.d \
./CMSIS/RTX5/rtx_kernel.d \
./CMSIS/RTX5/rtx_lib.d \
./CMSIS/RTX5/rtx_memory.d \
./CMSIS/RTX5/rtx_mempool.d \
./CMSIS/RTX5/rtx_msgqueue.d \
./CMSIS/RTX5/rtx_mutex.d \
./CMSIS/RTX5/rtx_semaphore.d \
./CMSIS/RTX5/rtx_system.d \
./CMSIS/RTX5/rtx_thread.d \
./CMSIS/RTX5/rtx_timer.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/RTX5/%.o: ../CMSIS/RTX5/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DDEBUG -DFRDM_KL25Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -I../CMSIS -I../source -I../startup -I../Include -I"../CMSIS/RTX5" -I"../source/LCD" -I"../source/Profiler" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<" -fomit-frame-pointer
	@echo 'Finished building: $<'
	@echo ' '


