# 基于OpenCore制作LiveUSB启动器
本目录基于OpenCorePkg制作LiveUSB启动器。本启动器不要求用户指定"PciRoot..."类型的前缀，只需要从"HD(X,GPT,UUID)"类似的前缀指定路径就可以了。具体的示例可以参考EFI/OC/config.plist。

# 编译环境
1. Xcode: Version 9.4 (9F1027a)
LLVM: Version 9.1.0 (clang-902.0.39.2), Target x86_64-apple-darwin18.7.0
2. nasm: version 2.15.05 (or latest version should work)
3. iasl: Intel ACPI Component Architecture ASL+ Optimizing Compiler/Disassembler version 20200528
4. mtoc: Latest should work

# 编译
1. 克隆当前目录，并切换到UDK文件夹
2. 输入``source edksetup.sh`` (如果有错误，输入``en``查看环境变量，然后用``export``命令来更改"WORKSPACE", "EDK_TOOLS_PATH", "CONF_PATH"这些变量的实际路径)
3. 输入``make -C BaseTools`` (如果有ld: malformed file zippered的错误，输入``sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /``)
4. 输入``build -a X64 -b RELEASE/DEBUG/NOOPT -t XCODE5 -p OpenCorePkg/OpenCorePkg.dsc`` (RELEASE/DEBUG/NOOPT三者选其一)

# 安装
1. 在UDK/Build目录下，找到Bootstrap.efi (改名为Bootx64.efi), OpenCore.efi, OpenRuntime.efi, OpenLinuxBoot.efi, OpenCanopy.efi，然后复制到EFI文件夹的相应位置。
2. 把EFI文件夹（这里选EFI-RELEASE或者EFI-DEBUG二者之一，重命名为EFI）放到你的ESP分区。
3. 编辑ESP分区里面的EFI/OC/config.plist.

# 特别注意
现在的代码里面，"BlessOverride"选项不起作用了，另外，我设置了只显示外部设备的分区，不会显示当前电脑上的分区，不管怎么设置ScanPolicy也不会先显示。
