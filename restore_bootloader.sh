#!/bin/bash

avrdude -c avrispmkII -p m328p -P usb -Ulock:w:0x3F:m -Uefuse:w:0x05:m -Uhfuse:w:0xDE:m -Ulfuse:w:0xFF:m
avrdude -c avrispmkII -p m328p -P usb -Uflash:w:optiboot_atmega328.hex:i -Ulock:w:0x0F:m
