<img width="1381" height="553" alt="image" src="https://github.com/user-attachments/assets/aff79b61-50c0-42df-8b7e-9f6478825e46" />

# CMOS Inverter Performance Analysis

## Experiment Overview
This experiment characterizes the performance of CMOS inverters with varying transistor sizing ratios to analyze the trade-offs between rise time, fall time, and switching threshold voltage.

## Table Summary

| PMOS Size | NMOS Size | Rise Delay | Fall Delay | Switching Threshold (Vm) |
|-----------|-----------|------------|------------|--------------------------|
| Wp/Lp     | Wn/Ln     | 148ps      | 71ps       | 0.99V                    |
| Wp/Lp     | 2Wn/Ln    | 80ps       | 76ps       | 1.20V                    |
| Wp/Lp     | 3Wn/Ln    | 57ps       | 80ps       | 1.25V                    |
| Wp/Lp     | 4Wn/Ln    | 45ps       | 84ps       | 1.35V                    |
| Wp/Lp     | 5Wn/Ln    | 37ps       | 88ps       | 1.40V                    |

## Key Findings

### Delay Characteristics
- **Rise Delay** (PMOS-controlled) decreases from 148ps to 37ps as NMOS width increases
- **Fall Delay** (NMOS-controlled) increases from 71ps to 88ps as NMOS width increases
- **Balanced operation** occurs at 2Wn/Ln ratio (80ps rise vs 76ps fall)

### Switching Threshold
- **Vm increases** from 0.99V to 1.40V with stronger NMOS transistors
- Demonstrates the relationship between transistor strength and switching point

### Design Trade-offs
- **Wider NMOS**: Faster fall times but slower rise times
- **Narrower NMOS**: Faster rise times but slower fall times  
- **Optimal balance**: Achieved at 2:1 NMOS to PMOS ratio for symmetric switching

## Experimental Parameters

### Constant Values
- PMOS transistor size (Wp/Lp) remains fixed
- Supply voltage (Vdd) assumed constant at typical CMOS levels
- Temperature and process conditions constant

### Varied Parameters
- NMOS width scaling factor (1x to 5x relative to base size)
- Transistor strength ratio (NMOS to PMOS current drive capability)

## Applications
- Digital circuit timing optimization
- Clock distribution network design
- Standard cell library characterization
- VLSI circuit performance analysis

## Conclusions
The experiment demonstrates the critical trade-off between rise/fall times and noise margins in CMOS inverter design, highlighting the importance of proper transistor sizing for optimal digital circuit performance.
