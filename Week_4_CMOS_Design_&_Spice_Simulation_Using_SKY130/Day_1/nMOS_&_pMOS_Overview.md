#  NMOS & PMOS Characteristics in VLSI Circuit Design

##  1️⃣ MOSFET Basics
In VLSI design, **NMOS** and **PMOS** transistors act as switches that control current flow between **drain (D)** and **source (S)** terminals using **gate voltage (Vgs)**.

---
##  NMOS Operating Regions
**a).Accumulation**

 <img width="2474" height="876" alt="image" src="https://github.com/user-attachments/assets/cb73defc-86ed-4c4b-bb0a-01cef3bb2073" />


**b).Depletion**


<img width="2731" height="895" alt="image" src="https://github.com/user-attachments/assets/7dce7b7b-231c-4461-a59e-5283533caebf" />


**b).Strong Inversion & Threshold Voltage**


<img width="2476" height="863" alt="image" src="https://github.com/user-attachments/assets/d4c161f5-4a83-4293-9921-fc24bdb2bc68" />


##  2️⃣ NMOS Characteristics

| Region | Condition | Behavior |
|--------|------------|-----------|
| Cut-off | Vgs < Vth | Transistor OFF (no current) |
| Linear (Triode) | Vgs > Vth and Vds < (Vgs - Vth) | Acts like a resistor |
| Saturation | Vgs > Vth and Vds ≥ (Vgs - Vth) | Acts like a current source |

- **Current equation (saturation):**
  \[
  I_D = \frac{1}{2} \mu_n C_{ox} \frac{W}{L} (V_{GS} - V_{th})^2
  \]

---

##  3️⃣ PMOS Characteristics

| Region | Condition | Behavior |
|--------|------------|-----------|
| Cut-off | Vsg < |Vth| | Transistor OFF |
| Linear | Vsg > |Vth| and Vsd < (Vsg - |Vth|) | Acts like resistor |
| Saturation | Vsg > |Vth| and Vsd ≥ (Vsg - |Vth|) | Acts like current source |

- **Current equation (saturation):**
  \[
  I_D = \frac{1}{2} \mu_p C_{ox} \frac{W}{L} (V_{SG} - |V_{th}|)^2
  \]

---

##  4️⃣ Role of W/L Ratio

- **W (Width):** Controls how much current flows through the channel.  
  ↑ W → ↑ current (stronger transistor)

- **L (Length):** Controls how much resistance the channel offers.  
  ↑ L → ↓ current (slower transistor)

###  So,
\[
I_D \propto \frac{W}{L}
\]

- Larger **W/L** → Higher drive current → Faster switching  
- Smaller **W/L** → Lower power → Slower operation

---

## 5️⃣ NMOS vs PMOS Summary

| Feature | NMOS | PMOS |
|----------|-------|-------|
| Carrier | Electrons | Holes |
| Mobility (μ) | High | Low |
| Threshold Voltage | +Vth | -Vth |
| ON Condition | Vgs > Vth | Vsg > |Vth| |
| Current Strength | Stronger | Weaker (for same W/L) |

---

## ⚡ 6️⃣ Design Insight

To balance CMOS inverter performance:
\[
\frac{(W/L)_{PMOS}}{(W/L)_{NMOS}} \approx 2
\]
(because PMOS mobility is roughly half that of NMOS)

---

## 🧾 Summary

- **Current in MOSFET ∝ (W/L)(Vgs - Vth)²**
- **W/L ratio decides transistor strength**
- **NMOS pulls down** (logic ‘0’)
- **PMOS pulls up** (logic ‘1’)

---

✅ **In Short:**
> “W/L ratio defines how strong or fast a transistor is —  
> it directly decides the current, delay, and performance of CMOS circuits.”


