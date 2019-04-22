################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../montecarlo/Random.c \
../montecarlo/montecarlo-symbolic.c \
../montecarlo/montecarlo.c 

OBJS += \
./montecarlo/Random.o \
./montecarlo/montecarlo-symbolic.o \
./montecarlo/montecarlo.o 

C_DEPS += \
./montecarlo/Random.d \
./montecarlo/montecarlo-symbolic.d \
./montecarlo/montecarlo.d 


# Each subdirectory must supply rules for building sources it contributes
montecarlo/%.o: ../montecarlo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


