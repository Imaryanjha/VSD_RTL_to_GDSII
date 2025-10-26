
# 📘 CMOS Noise Margin & Robustness

## 🎯 Objective
To analyze the **noise margins** of a CMOS inverter and understand how design parameters affect its **robustness** against noise and process variations.

---

## 🧠 Concept Overview

### What is Noise Margin?
Noise margin defines how much unwanted voltage variation (noise) a digital circuit can tolerate without causing a logic error.  
In CMOS logic, it quantifies the **input voltage range** that still guarantees a correct logic output.

A **robust** design maintains large noise margins, ensuring stable operation even under:
- Process variations  
- Temperature changes  
- Supply voltage fluctuations (VDD drop or IR drop)

---
```
VOH ────────────┐
                │ ← NMH = VOH - VIH (High noise margin)
VIH ────────────┤
                │ ← Undefined transition region
VIL ────────────┤
                │ ← NML = VIL - VOL (Low noise margin)
VOL ────────────┘
```
## ⚙️ CMOS Inverter VTC

The **Voltage Transfer Characteristic (VTC)** of a CMOS inverter shows how the output voltage changes with the input voltage.  
It has three regions:
1. **Region 1:** NMOS OFF, PMOS ON → output = VDD (logic ‘1’)  
2. **Region 2:** Transition region → both transistors partially ON  
3. **Region 3:** NMOS ON, PMOS OFF → output ≈ 0 V (logic ‘0’)  

The shape of this curve determines the **Noise Margins**.

---

## 🔢 Noise Margin Equations

| Parameter | Description | Formula |
|------------|--------------|----------|
| **VOH** | Minimum output voltage recognized as logic ‘1’ | ≈ VDD |
| **VOL** | Maximum output voltage recognized as logic ‘0’ | ≈ 0 V |
| **VIH** | Minimum input voltage recognized as logic ‘1’ | From VTC |
| **VIL** | Maximum input voltage recognized as logic ‘0’ | From VTC |


---
### VTC with critical voltages marked for noise margin extraction
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/883f817b-623b-4fbb-a2e1-d24e1112a249" />


---
### Unity-gain points defining VIL and VIH thresholds
<img width="1408" height="760" alt="image" src="https://github.com/user-attachments/assets/41d61282-c94c-4d2e-b38a-96a17e479e61" />


---
## 📊 Extracted Parameters

| **Parameter** | **Value** | **Calculation** | **Result** |
|----------------|-----------|------------------|-------------|
| **VOH** | 1.800 V | Direct measurement | ✅ Rail-to-rail |
| **VOL** | ~0.0006 mV | Direct measurement | ✅ Essentially 0 V |
| **VIL** | 0.7436 V | Where gain = –1 (left) | ✅ Good separation |
| **VIH** | 1.0036 V | Where gain = –1 (right) | ✅ Good separation |

---

## 🧮 Computed Noise Margins

\[
NM_H = VOH - VIH = 1.800 - 1.0036 = 0.7964 \, V \; (≈ 44.2\% \, of \, VDD)
\]

\[
NM_L = VIL - VOL = 0.7436 - 0.0006 = 0.7430 \, V \; (≈ 41.3\% \, of \, VDD)
\]

⭐ **NMH = 0.796 V** → Excellent high-level noise immunity  
⭐ **NML = 0.743 V** → Strong low-level noise tolerance  

Overall, both noise margins are **well-balanced and robust**, confirming stable CMOS inverter behavior across operating conditions.

---




## 🧩 Robustness Factors

| Factor | Effect on Noise Margin | Explanation |
|---------|------------------------|--------------|
| **Supply Voltage (VDD)** | ↓ VDD → ↓ Noise Margin | Smaller logic swing reduces noise immunity |
| **Transistor Sizing (W/L)** | Affects VTC slope | Adjusts trip point; unbalanced sizes can shift switching threshold |
| **Threshold Voltage (Vth)** | Variations alter VIH/VIL | Impacts robustness under process corners |
| **Temperature** | ↑ T → mobility ↓ | Slower transitions and degraded logic levels |
| **Load Capacitance** | Higher load → longer transitions | Increases susceptibility to noise and crosstalk |

---

