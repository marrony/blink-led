.PHONY: stm32 flash-stm32 pro

build-stm32/blink-led.ino.bin: blink-led.ino
	rm -rf ./build-stm32
	arduino-cli compile -b STMicroelectronics:stm32:GenF1:pnum=BLUEPILL_F103C8 --build-path ./build-stm32

stm32: build-stm32/blink-led.ino.bin

flash-stm32: build-stm32/blink-led.ino.bin
	st-flash write build-stm32/blink-led.ino.bin 0x8000000

pro:
	arduino-cli compile -b arduino:avr:pro:cpu=8MHzatmega328 -v --upload -p /dev/cu.usbmodem14501

