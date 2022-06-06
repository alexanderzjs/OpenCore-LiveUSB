#!/bin/bash

cp -f /Users/alexanderzjs/Desktop/OpenCore-LiveUSB/UDK/Build/OpenCorePkg/DEBUG_XCODE5/X64/Bootstrap.efi /Volumes/EFI/EFI/BOOT/BOOTX64.efi
cp -f /Users/alexanderzjs/Desktop/OpenCore-LiveUSB/UDK/Build/OpenCorePkg/DEBUG_XCODE5/X64/OpenCore.efi /Volumes/EFI/EFI/OC/OpenCore.efi
cp -f /Users/alexanderzjs/Desktop/OpenCore-LiveUSB/UDK/Build/OpenCorePkg/DEBUG_XCODE5/X64/OpenRuntime.efi /Volumes/EFI/EFI/OC/Drivers/OpenRuntime.efi
cp -f /Users/alexanderzjs/Desktop/OpenCore-LiveUSB/UDK/Build/OpenCorePkg/DEBUG_XCODE5/X64/OpenLinuxBoot.efi /Volumes/EFI/EFI/OC/Drivers/OpenLinuxBoot.efi
cp -f /Users/alexanderzjs/Desktop/OpenCore-LiveUSB/UDK/Build/OpenCorePkg/DEBUG_XCODE5/X64/OpenCanopy.efi /Volumes/EFI/EFI/OC/Drivers/OpenCanopy.efi