MQTTDISP_ROOT  = $(shell pwd)
MQTTDISP_TTY  ?= /dev/tty.SLAB_USBtoUART

MQTTDISP_MICROPY_FW?= $(MQTTDISP_ROOT)/micropython/esp32-idf3-20210202-v1.14.bin

.PHONY: esp32-erase
esp32-erase:
	esptool.py --port $(MQTTDISP_TTY)  erase_flash

.PHONY: esp32-flash-micropy
esp32-flash-micropy:
	esptool.py --chip esp32 --port $(MQTTDISPLAY_TTY) --baud 460800 write_flash -z 0x1000 $(MQTTDISP_MICROPY_FW)

.PHONY: esp32-init
esp32-init: esp32-flash-micropy esp32-erase

