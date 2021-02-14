MQTTDISP_ROOT  = $(shell pwd)
MQTTDISP_TTY  ?= /dev/tty.SLAB_USBtoUART

MQTTDISP_MICROPY_FW_PATH?= $(MQTTDISP_ROOT)/micropython
MQTTDISP_MICROPY_FW?= esp32-idf3-20210202-v1.14.bin

BOLD=$(shell tput bold)
NORMAL=$(shell tput sgr0)

$(MQTTDISP_MICROPY_FW_PATH)/$(MQTTDISP_MICROPY_FW):
	@echo "`tput setaf 2`[MQTTDISP]: Downloading ESP32 Micropython Firmare....`tput sgr0`" 
	mkdir -p $(@D)
	curl --insecure https://micropython.org/resources/firmware/$(MQTTDISP_MICROPY_FW) -o $(@)

.PHONY: esp32-erase
esp32-erase:
	@echo "`tput setaf 2`[MQTTDISP]: Erasing ESP32....`tput sgr0`" 
	esptool.py --port $(MQTTDISP_TTY)  erase_flash

.PHONY: esp32-flash-micropy
esp32-flash-micropy: $(MQTTDISP_MICROPY_FW_PATH)/$(MQTTDISP_MICROPY_FW)
	@echo "`tput setaf 2`[MQTTDISP]: Flashing ESP32....`tput sgr0`" 
	esptool.py --chip esp32 --port $(MQTTDISP_TTY) --baud 460800 write_flash -z 0x1000 $(MQTTDISP_MICROPY_FW_PATH)/$(MQTTDISP_MICROPY_FW)

.PHONY: esp32-init
esp32-init: esp32-erase esp32-flash-micropy 

.PHONY: clean
clean:
	rm -rf $(MQTTDISP_MICROPY_FW_PATH)

