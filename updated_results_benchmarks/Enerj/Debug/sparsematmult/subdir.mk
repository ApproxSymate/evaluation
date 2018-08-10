################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sparsematmult/Random.c \
../sparsematmult/sparsematmult-symbolic.c \
../sparsematmult/sparsematmult.c 

OBJS += \
./sparsematmult/Random.o \
./sparsematmult/sparsematmult-symbolic.o \
./sparsematmult/sparsematmult.o 

C_DEPS += \
./sparsematmult/Random.d \
./sparsematmult/sparsematmult-symbolic.d \
./sparsematmult/sparsematmult.d 


# Each subdirectory must supply rules for building sources it contributes
sparsematmult/%.o: ../sparsematmult/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


