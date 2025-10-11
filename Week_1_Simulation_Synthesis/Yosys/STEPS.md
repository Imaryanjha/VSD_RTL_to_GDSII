# 🔧 Yosys Synthesis Implementation Guide

## 🚀 Quick Start Steps

### Step 1: Launch Yosys
```bash
yosys
```
<img width="1450" height="546" alt="Yosys" src="https://github.com/user-attachments/assets/a223be73-131e-48c3-8107-99b000bda33e" />

### Step 2: Module Reading / Load Design
``` bash
read_verilog and_gate.v
```
<img width="1135" height="279" alt="image" src="https://github.com/user-attachments/assets/97114119-708d-4c97-b922-d9a2dff49a91" />

### Step 3: Synthesize Logic
```bash
synth
```
<img width="1447" height="996" alt="Synth_And_Gate" src="https://github.com/user-attachments/assets/ce7b2cd7-b5c3-412b-b59a-77e69562c1f8" />

### Step 3.5: Technology Mapping
```bash
abc -g AND
```
<img width="1781" height="1303" alt="Technology_Mapping_And_Gate" src="https://github.com/user-attachments/assets/b05060c8-d5eb-463e-97c7-6091760dfbc9" />

### Step 4: Generate Netlist
```bash
write_verilog and_gate_netlist.v
```

<img width="1875" height="1032" alt="Generated_Netlist_and_gate" src="https://github.com/user-attachments/assets/45f8a5f3-7f44-49d7-9edb-32a1fe92928d" />

