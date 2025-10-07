# Essential Yosys Optimization Macros

## Basic Synthesis Flow
synth -top module_name

## Core Optimization Commands
opt


opt_clean


opt_expr

## Memory Optimization
memory -nomap

## FSM Optimization
fsm

## Technology Mapping
abc -liberty lib.lib

## Hierarchy & Processing
hierarchy -check -top module_name
proc
flatten

# Quick Synthesis Script
read_verilog design.v


read_liberty lib.lib


synth -top module_name


abc -liberty lib.lib


stat


write_verilog synth_output.v

# Advanced Optimization
read_verilog design.v


read_liberty lib.lib


hierarchy -top top_module


proc


opt


fsm


opt


memory -nomap


opt


wreduce

opt_clean

abc -liberty lib.lib

flatten

opt_clean

stat

write_verilog optimized.v
