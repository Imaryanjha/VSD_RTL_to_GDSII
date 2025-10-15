#  Why We Need SPICE in VLSI Design

##  1️⃣ What is SPICE?

**SPICE** (Simulation Program with Integrated Circuit Emphasis)  
is a **circuit-level simulator** used to analyze and verify the **electrical behavior** of transistor-based circuits before fabrication.

It models how **voltage, current, and timing** behave inside a circuit at the **device level**.

---


---





### 🔹  Cell Characterization
When creating **standard cells**, SPICE is used to:
- Measure **propagation delay** and **transition time**
- Calculate **dynamic & leakage power**
- Generate **.lib (timing library)** files for synthesis & STA

*Every timing number in a .lib comes from SPICE simulations.*

---

<img width="2400" height="689" alt="image" src="https://github.com/user-attachments/assets/69717815-dd96-4424-b213-cba2092e9516" />

**This Table comes from via SPICE**


## 🧾 5️⃣ Example: CMOS Inverter in SPICE

```spice
M1 out in vdd vdd PMOS W=2u L=0.18u
M2 out in gnd gnd NMOS W=1u L=0.18u
Vdd vdd 0 1.8
Vin in 0 PULSE(0 1.8 0ns 0.1ns 0.1ns 5ns 10ns)
.tran 0.1ns 20ns
.end
