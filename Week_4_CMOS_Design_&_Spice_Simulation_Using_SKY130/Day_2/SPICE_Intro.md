#  SPICE Netlist – 

##  1️⃣ What is a SPICE Netlist?

A **SPICE netlist** is a plain text file that describes an **electronic circuit** in terms of:
- **Components** (transistors, resistors, capacitors, voltage sources, etc.)
- **Connections** (which nodes are linked)
- **Simulation commands** (analysis type, time step, etc.)

It is the **input file** for the SPICE simulator —  
telling it **what circuit to simulate** and **how to simulate it**.

---



<img width="2645" height="949" alt="image" src="https://github.com/user-attachments/assets/fa826c23-d418-4d76-bc89-56e07615596f" />

---
### 🔹 Example: CMOS Inverter Netlist
```spice
* CMOS Inverter Example
M1 out in vdd vdd PMOS W=2u L=0.18u
M2 out in gnd gnd NMOS W=1u L=0.18u

Vdd vdd 0 1.8
Vin in 0 PULSE(0 1.8 0ns 0.1ns 0.1ns 5ns 10ns)

.tran 0.1ns 20ns
.end
```
