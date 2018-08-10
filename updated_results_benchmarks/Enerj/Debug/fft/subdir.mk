################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fft/Random.c \
../fft/fft-symbolic\ (copy).c \
../fft/fft-symbolic.c \
../fft/fft.c 

OBJS += \
./fft/Random.o \
./fft/fft-symbolic\ (copy).o \
./fft/fft-symbolic.o \
./fft/fft.o 

C_DEPS += \
./fft/Random.d \
./fft/fft-symbolic\ (copy).d \
./fft/fft-symbolic.d \
./fft/fft.d 


# Each subdirectory must supply rules for building sources it contributes
fft/%.o: ../fft/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fft/fft-symbolic\ (copy).o: ../fft/fft-symbolic\ (copy).c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"fft/fft-symbolic (copy).d" -MT"fft/fft-symbolic\ (copy).d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


