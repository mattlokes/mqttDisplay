MQTTDISP_ROOT  = $(shell pwd)
MQTTDISP_TTY  ?= /dev/tty.SLAB_USBtoUART
MQTTDISP_BAUD ?= 115200

MQTTDISP_MICROPY_FW_PATH?= $(MQTTDISP_ROOT)/micropython
MQTTDISP_MICROPY_FW?= esp32-idf3-20210202-v1.14.bin

# ####################################################################################3
# ESP32 SPECIFIC TARGETS
# ####################################################################################3
$(MQTTDISP_MICROPY_FW_PATH)/$(MQTTDISP_MICROPY_FW):
	@echo "`tput setaf 2`[MQTTDISP]: Downloading ESP32 Micropython Firmare...`tput sgr0`" 
	mkdir -p $(@D)
	curl --insecure https://micropython.org/resources/firmware/$(MQTTDISP_MICROPY_FW) -o $(@)

.PHONY: esp32-erase
esp32-erase:
	@echo "`tput setaf 2`[MQTTDISP]: Erasing ESP32...`tput sgr0`" 
	esptool.py --port $(MQTTDISP_TTY)  erase_flash

.PHONY: esp32-flash-micropy
esp32-flash-micropy: $(MQTTDISP_MICROPY_FW_PATH)/$(MQTTDISP_MICROPY_FW)
	@echo "`tput setaf 2`[MQTTDISP]: Flashing ESP32...`tput sgr0`" 
	esptool.py --chip esp32 --port $(MQTTDISP_TTY) --baud $(MQTTDISP_BAUD) write_flash -z 0x1000 $(MQTTDISP_MICROPY_FW_PATH)/$(MQTTDISP_MICROPY_FW)

.PHONY: esp32-init
esp32-init: esp32-erase esp32-flash-micropy 
	
# ####################################################################################3
# MQTT DISPLAY MICROPYTHON TARGETS
# ####################################################################################3


.PHONY: upload-python-main
upload-python-main:
	@echo "`tput setaf 2`[MQTTDISP]: Uploading Python Main/Boot/Display Src...`tput sgr0`" 
	ampy --port $(MQTTDISP_TTY) put $(MQTTDISP_ROOT)/src/main.py
	ampy --port $(MQTTDISP_TTY) put $(MQTTDISP_ROOT)/src/display.py
	ampy --port $(MQTTDISP_TTY) put $(MQTTDISP_ROOT)/src/boot.py

.PHONY: upload-python-umqttsimple 
upload-python-umqttsimple:
	ampy --port $(MQTTDISP_TTY) put $(MQTTDISP_ROOT)/src/umqttsimple

.PHONY: upload-python-pixelpanel 
upload-python-pixelpanel:
	ampy --port $(MQTTDISP_TTY) put $(MQTTDISP_ROOT)/src/PixelPanel

.PHONY: upload-python-adafruitgfx
upload-python-adafruitgfx:
	ampy --port $(MQTTDISP_TTY) put $(MQTTDISP_ROOT)/src/Adafruit_GenericPython_GFX/adafruit_gfx 

.PHONY: upload-python-adafruitdotstar
upload-python-adafruitdotstar:
	ampy --port $(MQTTDISP_TTY) put $(MQTTDISP_ROOT)/src/Adafruit_GenericPython_Dotstar/micropython_dotstar.py

.PHONY: upload-python
upload-python: upload-python-umqttsimple upload-python-pixelpanel upload-python-adafruitgfx upload-python-adafruitdotstar upload-python-main 
	ampy --port $(MQTTDISP_TTY) ls -l 

.PHONY: attach
attach:
	screen -R -S mqttdisplay  $(MQTTDISP_TTY) $(MQTTDISP_BAUD)

.PHONY: clean
clean:
	rm -rf $(MQTTDISP_MICROPY_FW_PATH)
