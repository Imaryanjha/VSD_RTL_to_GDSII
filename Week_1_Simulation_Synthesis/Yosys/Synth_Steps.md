# GTKWave 
<img width="2008" height="1273" alt="image" src="https://github.com/user-attachments/assets/cacf987d-1ea2-4535-a7d6-06447bf53dd9" />

---

# 4-Bit Counter: Synthesis Flow

## Project Overview
A complete digital design flow from RTL to gate-level synthesis using:
- **Icarus Verilog** for simulation
- **Yosys** for synthesis
- **ABC** for technology mapping

## Design: 4-Bit Counter
- **Inputs**: clk, rst_n (active low reset), enable
- **Outputs**: 4-bit count, overflow flag
- **Function**: Counts from 0-15, sets overflow at maximum value

# Yosys synthesis script for counter design
```
// cat > synthesis.ys << 'EOF'
// Read Verilog file
read_verilog counter.v

// Synthesize the design
synth -top counter

//Technology mapping
abc -g AND,XOR

// Generate netlist
write_verilog counter_synth.v

// Show statistics
stat
EOF
```

# Final Stats
## Counter Design Summary

| Feature | Value | Description |
|---------|-------|-------------|
| Number of wires | 26 | Total wires in the design |
| Number of wire bits | 32 | Total wire bits (including bus widths) |
| Number of public wires | 5 | Top-level interface wires |
| Number of public wire bits | 8 | Top-level interface bits (4-bit count + overflow) |
| Number of memories | 0 | No memory blocks used |
| Number of memory bits | 0 | No memory bits |
| Number of processes | 0 | No behavioral processes (all converted to gates) |
| Number of cells | 12 | Total logic cells/gates |
