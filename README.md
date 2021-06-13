# Yggdrasil Toolchain

## Setup

### Windows

- Place the yggdrasil folder under e.g `C:/Dev/yggdrasil`.
- Add `C:/Dev/yggdrasil/midgard/bin` and `C:/Dev/yggdrasil/asgard/bin` to your PATH environment variable.

### Linux

- Place the yggdrasil folder under `/opt/yggdrasil`.
- Add `/opt/yggdrasil/midgard/bin` and `/opt/yggdrasil/asgard/bin` to your PATH environment variable.

## Content

### Midgard
- Latest GNU-RM toolchain: https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads
- ST-LINK GDB Server, put in bin folder: https://www.st.com/en/development-tools/st-link-server.html

### Asgard
- Latest GNU-A toolchain: https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a
- Asgard Linux headers, put in sysroot/usr/include. Built with `make headers_install ARCH=arm INSTALL_HDR_PATH=./sysroot/usr/include`
