# OpenCore-LiveUSB
OpenCorePkg fork with the ability to make LiveUSB installer. This installer doesn't need you to specify the Device Path prefixing (i.e., "PciRoot..."), you just need to add "HD(1,GPT,UUID)" (currently only "HD" is supported, other types can be added upon requests) before your bootloader file. Refer to the example config.plist in the EFI/OC/.

# Environment
1. Xcode: Version 9.4 (9F1027a)
LLVM: Version 9.1.0 (clang-902.0.39.2), Target x86_64-apple-darwin18.7.0
2. nasm: version 2.15.05 (or latest version should work)
3. iasl: Intel ACPI Component Architecture ASL+ Optimizing Compiler/Disassembler version 20200528
4. mtoc: Latest should work

# Compilation
1. Clone and change directory to UDK folder
2. ``source edksetup.sh`` (if there is any error, type in "env" and use export to change environment variables such as "WORKSPACE", "EDK_TOOLS_PATH", "CONF_PATH" to fix the issue)
3. ``make -C BaseTools`` (if it shows ld: malformed file zippered, run ``sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /``)
4. ``build -a X64 -b RELEASE/DEBUG/NOOPT -t XCODE5 -p OpenCorePkg/OpenCorePkg.dsc`` (RELEASE/DEBUG/NOOPT choose one only)

# Installation
1. In UDK/Build directory, there should be lots of .efi files. Copy at least Bootstrap.efi (rename it as Bootx64.efi), OpenCore.efi, OpenRuntime.efi, OpenLinuxBoot.efi, OpenCanopy.efi to replace those in EFI folder.
2. Move EFI to your ESP partition.
3. Edit EFI/OC/config.plist to meet your need.

# Special notice
In this code, I have disabled the "BlessOverride" option. So, don't expect your internal hard drive to work, and the scanpolicy 
will not work even you try to specify the internal hard drive.