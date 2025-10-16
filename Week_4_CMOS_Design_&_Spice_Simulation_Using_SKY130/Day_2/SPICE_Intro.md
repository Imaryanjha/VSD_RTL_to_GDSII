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


# Example :- SPICE Simulation for MOSFET (W=1.8µm, L=1.2µm)

<img width="3040" height="1660" alt="image" src="https://github.com/user-attachments/assets/a5981e50-fe31-48eb-8968-a69d01f1debd" />


This **image** summarizes the SPICE simulation setup and equations for a MOSFET with a width (W) of 1.8µm and a length (L) of 1.2µm, resulting in a W/L ratio of 1.5.

---

## Operating Regions and Current Equations

### Linear Region
The drain current \( I_d \) in the linear region is given by:
```
Id = kn' · (W/L) · [(Vgs - Vt)·Vds - (Vds²)/2] · (1 + λ·Vds)
```
### Saturation Region
The drain current \( I_d \) in the saturation region is given by:
```
Id = (kn'/2) · (W/L) · (Vgs - Vt)² · (1 + λ·Vds)
```

Where:
- \( k_n \) = process transconductance parameter
- \( V_{gs} \) = gate-to-source voltage
- \( V_{ds} \) = drain-to-source voltage
- \( V_t \) = threshold voltage

---

## Voltage Sweep Parameters
A voltage sweep was performed with the following values:
- **V**: 1.0V, 1.5V, 2.0V, 2.5V

---

## Notes
- The simulation assumes \( V_{ds} = V_{gs} - V_t \) at the edge of saturation.
- The model and results are based on the Level 1 SPICE MOSFET model.

---

## Reference
For more details, visit: [VLSI System Design](http://vlsisystemdesign.com/)

