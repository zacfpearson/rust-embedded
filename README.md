# Rust-Embedded
This repo contains example apps that utilize rust to program embedded systems. 

## Setup
- Create an ~/embedded/tmp directory 
- Use the nix-shell config in this projects root directory to get setup with the toolchain for cross compiling.

## Helpful commands
- setup opencd link(in ~/embedded/tmp): `sudo openocd -f interface/stlink-v2-1.cfg -f target/stm32f3x.cfg`
- setup itmdump(~/embedded/tmp): `~/.cargo/bin/itmdump -F -f itm.txt`
- setup minicom: `sudo minicom -D /dev/ttyACM0 -b 115200`
