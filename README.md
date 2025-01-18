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
cd hello
iverilog -o hello.out -g2012 hello.sv
vvp hello.out
```
