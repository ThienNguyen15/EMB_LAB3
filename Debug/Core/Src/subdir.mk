################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/adc.c \
../Core/Src/at24c.c \
../Core/Src/button.c \
../Core/Src/buzzer.c \
../Core/Src/dma.c \
../Core/Src/ds3231.c \
../Core/Src/fsmc.c \
../Core/Src/gpio.c \
../Core/Src/i2c.c \
../Core/Src/lcd.c \
../Core/Src/led_7seg.c \
../Core/Src/light_control.c \
../Core/Src/main.c \
../Core/Src/picture.c \
../Core/Src/sensor.c \
../Core/Src/software_timer.c \
../Core/Src/spi.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c \
../Core/Src/tim.c \
../Core/Src/touch.c \
../Core/Src/uart.c \
../Core/Src/usart.c \
../Core/Src/utils.c 

OBJS += \
./Core/Src/adc.o \
./Core/Src/at24c.o \
./Core/Src/button.o \
./Core/Src/buzzer.o \
./Core/Src/dma.o \
./Core/Src/ds3231.o \
./Core/Src/fsmc.o \
./Core/Src/gpio.o \
./Core/Src/i2c.o \
./Core/Src/lcd.o \
./Core/Src/led_7seg.o \
./Core/Src/light_control.o \
./Core/Src/main.o \
./Core/Src/picture.o \
./Core/Src/sensor.o \
./Core/Src/software_timer.o \
./Core/Src/spi.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o \
./Core/Src/tim.o \
./Core/Src/touch.o \
./Core/Src/uart.o \
./Core/Src/usart.o \
./Core/Src/utils.o 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/at24c.d \
./Core/Src/button.d \
./Core/Src/buzzer.d \
./Core/Src/dma.d \
./Core/Src/ds3231.d \
./Core/Src/fsmc.d \
./Core/Src/gpio.d \
./Core/Src/i2c.d \
./Core/Src/lcd.d \
./Core/Src/led_7seg.d \
./Core/Src/light_control.d \
./Core/Src/main.d \
./Core/Src/picture.d \
./Core/Src/sensor.d \
./Core/Src/software_timer.d \
./Core/Src/spi.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d \
./Core/Src/tim.d \
./Core/Src/touch.d \
./Core/Src/uart.d \
./Core/Src/usart.d \
./Core/Src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

