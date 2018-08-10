################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lu/Random.c \
../lu/array.c \
../lu/lu-symbolic.c \
../lu/lu.c 

OBJS += \
./lu/Random.o \
./lu/array.o \
./lu/lu-symbolic.o \
./lu/lu.o 

C_DEPS += \
./lu/Random.d \
./lu/array.d \
./lu/lu-symbolic.d \
./lu/lu.d 


# Each subdirectory must supply rules for building sources it contributes
lu/%.o: ../lu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


