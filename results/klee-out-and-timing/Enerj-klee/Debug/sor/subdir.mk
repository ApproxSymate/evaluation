################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sor/Random.c \
../sor/sor-symbolic.c \
../sor/sor.c 

OBJS += \
./sor/Random.o \
./sor/sor-symbolic.o \
./sor/sor.o 

C_DEPS += \
./sor/Random.d \
./sor/sor-symbolic.d \
./sor/sor.d 


# Each subdirectory must supply rules for building sources it contributes
sor/%.o: ../sor/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


