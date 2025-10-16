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
# Technology File
## 📘 What is a Technology File?

A technology file defines the process-specific parameters of a semiconductor technology used for simulation, synthesis, and layout.
It acts as a bridge between design and fabrication, providing all the electrical, physical, and material details required by SPICE or layout tools.
## Key Information in a Technology File
| Parameter Type         | Description                                                                                                 |
| ---------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Layer Definitions**  | Defines each mask layer (e.g., poly, metal1, via1) and its properties.                                      |
| **Design Rules**       | Specifies minimum width, spacing, overlap, enclosure, etc.                                                  |
| **Device Parameters**  | Provides NMOS/PMOS model parameters like threshold voltage (Vth), mobility (µ), oxide thickness (tox), etc. |
| **RC Extraction Data** | Defines resistance and capacitance per unit length or area for interconnects.                               |
| **SPICE Models**       | Includes `.model` or `.lib` statements for transistor-level simulation.                                     |
| **Process Corners**    | Includes variations (TT, SS, FF) to simulate manufacturing conditions.                                      |

<img width="3011" height="1469" alt="image" src="https://github.com/user-attachments/assets/f4bbcde7-bd4e-4c77-9a5c-21d47230dc43" />

