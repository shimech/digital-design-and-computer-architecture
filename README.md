# Getting Started

## Install SystemVerilog compiler and runtime

```sh
brew install icarus-verilog
iverilog -V
```

## Install wave viewer

```sh
brew install --HEAD randomplum/gtkwave/gtkwave
gtkwave --version
```

ref: https://github.com/randomplum/gtkwave

## Run sample code

```sh
iverilog -o ./hello/hello.vvp ./hello/hello.sv
vvp ./hello/hello.vvp
```
