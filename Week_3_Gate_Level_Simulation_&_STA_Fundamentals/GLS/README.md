# 🔌 Gate Level Simulation (GLS) for Baby_SoC

## 🎯 What is GLS?
**Gate Level Simulation** is the process of verifying your SoC design using the **final netlist** (actual gates and flip-flops) with **real timing delays** from the technology library, instead of behavioral RTL code.

## ⚡ Why GLS is CRITICAL?

### 🕒 **Timing Validation**
- ✅ Verify setup/hold time requirements
- ✅ Check real propagation delays
- ✅ Validate clock tree timing

### 🔧 **Post-Synthesis Verification**
- ✅ Ensure synthesis didn't alter functionality
- ✅ Confirm clock tree synthesis results
- ✅ Verify power distribution network

### 🎯 **Real-World Behavior**
- ✅ Catch glitches and hazards
- ✅ Test reset sequence timing
- ✅ Validate clock domain crossing

### 🚀 **Tapeout Confidence**
- ✅ Final sign-off before fabrication
- ✅ Ensure design works with actual silicon delays

## 📊 GLS vs RTL Simulation

| Aspect | RTL Simulation | Gate Level Simulation |
|--------|---------------|----------------------|
| **Model** | Behavioral Code | Actual Gates + Delays |
| **Timing** | Zero Delays | Real Propagation Delays |
| **Accuracy** | Functional Only | Silicon-Accurate |
| **Purpose** | Function Check | Timing + Function Sign-off |


