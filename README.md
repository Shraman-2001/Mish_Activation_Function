# Mish Activation Function in Verilog HDL for FPGA

This project provides a modular and synthesizable Verilog HDL implementation of the Mish activation function, defined as:

Mish(x) = x * tanh(ln(1 + exp(x)))

Mish is a smooth, non-monotonic activation function that has empirically demonstrated improved performance in deep learning frameworks compared to traditional alternatives like ReLU and Swish. It is self-regularizing and enables better information propagation in neural networks[web:1][web:6].

## Features

- Synthesizable Verilog HDL core for rapid FPGA deployment.
- Parameterized bit-width for both fixed-point and floating-point integration.
- Includes both lookup-table (LUT) and pipelined hardware approaches for tanh, ln, and exp subfunctions.
- Standalone testbench for behavioral simulation and functional verification.
- Example integration with NN accelerator architectures targeting real-time FPGA inference.

## Applications

- Custom FPGA neural network accelerators
- On-chip deep learning inference engines (MLP, CNN, embedded AI)
- High-throughput systems needing fast, smooth non-linear activation evaluation
