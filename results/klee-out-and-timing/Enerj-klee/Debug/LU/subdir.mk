################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LU/Random.c \
../LU/array.c \
../LU/lu-symbolic.c \
../LU/lu.c 

OBJS += \
./LU/Random.o \
./LU/array.o \
./LU/lu-symbolic.o \
./LU/lu.o 

C_DEPS += \
./LU/Random.d \
./LU/array.d \
./LU/lu-symbolic.d \
./LU/lu.d 


# Each subdirectory must supply rules for building sources it contributes
LU/%.o: ../LU/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

LU/lu.o: ../LU/lu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"LU/lu.d"  -lm -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


