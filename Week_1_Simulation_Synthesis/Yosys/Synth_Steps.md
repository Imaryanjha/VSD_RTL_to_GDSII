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
cat > synthesis.ys << 'EOF'
# Yosys synthesis script for counter design

# Read Verilog file
read_verilog counter.v

# Synthesize the design
synth -top counter

# Technology mapping
abc -g AND,XOR

# Generate netlist
write_verilog counter_synth.v

# Show statistics
stat
EOF
