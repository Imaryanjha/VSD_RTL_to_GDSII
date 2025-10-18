#  Long Channel vs Short Channel MOSFETs

  
As device dimensions shrink, transistor behavior deviates from ideal models — leading to the distinction between 
**Long Channel** and **Short Channel** devices.

---

## 1️⃣ Long Channel MOSFET

### 📘 Definition
A **long-channel MOSFET** has a sufficiently large **channel length (L)** so that the **drain electric field** does not 
significantly affect carrier movement.

> Typically, L ≥ 1 µm (older technology nodes)

###  Characteristics
- Follows **ideal square-law behavior**
- **Gate** fully controls the channel
- Negligible **short-channel effects**
- Higher **output resistance**
- Lower **drive current**

###  Current Equation
For the saturation region:
```
ID​=1/2​μn​Cox ​w/l​(VGS​−VTH​)^2
```

### 📊 Key Properties
| Property | Long Channel Behavior |
|-----------|----------------------|
| Gate Control | Strong |
| Threshold Voltage (Vth) | Stable |
| Mobility | Higher |
| DIBL | Negligible |
| Subthreshold Slope | Ideal (~60 mV/decade) |

---

##  2️⃣ Short Channel MOSFET

### 📘 Definition
A **short-channel MOSFET** has a very small channel length (≤ 0.25 µm), where **drain-induced fields** influence channel behavior.

> The gate loses full control over the channel charge.

### ⚡ Characteristics
- Deviates from square-law model  
- Experiences **short-channel effects (SCEs)**  
- Reduced **Vth** due to DIBL  
- Increased **leakage current**  
- **Velocity saturation** occurs  
- Possible **hot-carrier degradation**

---

## 🔍 3️⃣ Major Short-Channel Effects

| Effect | Description |
|---------|--------------|
| **DIBL** | Drain voltage lowers source barrier → Vth reduction |
| **Velocity Saturation** | Carrier speed stops increasing with E-field |
| **Channel Length Modulation** | Effective L decreases with higher VDS |
| **Hot Carrier Injection** | High-energy carriers damage the gate oxide |
| **Subthreshold Leakage** | Current flows even below Vth |

---

## 📉 4️⃣ Modified Current Equation

Due to **velocity saturation**, current no longer follows the square law:

```
ID​=WCox​vsat​(VGS​−VTH​)
```
Where: v_{sat}: carrier saturation velocity
Linear Dependence on (vgs-vth), not quadratic




## OBSERVATION
LONG CHANNEL MOSFET
<img width="1522" height="1360" alt="image" src="https://github.com/user-attachments/assets/6b7c0fdd-2796-402f-9f2d-d08f4933bdea" />

SHORT CHANNEL MOSFET

<img width="1187" height="1019" alt="image" src="https://github.com/user-attachments/assets/afb7125b-f36f-40fe-bb87-18d27602c7f5" />

## LAB FOR LONG CHANNEL

AIM:-  DC voltage transfer characteristics of a resistive-load NMOS inverter circuit

**VARIABLES BEING SWEPT**:

**Primary Sweep**:

Vin = 0V to 2.5V in 0.1V steps

This is the main input voltage sweep to get the transfer characteristic

**Secondary Sweep :**
Vdd = 0V to 2.5V with "PJS" parameter (likely intended as parametric sweep)

**Spice Command**
```
*** MODEL Descriptions ***

*** NETLIST Description ***

M1 vdd n1 0 0 nmos W=1.8u L=1.2u  
R1 in n1 55  
Vdd vdd 0 2.5  
Vin in 0 2.5  

*** Choose one model library ***
.lib "tsmc_025um_model.mod" CMOS_MODELS
* OR *
*.include "mosis_lum_model.mod"

*** SIMULATION Commands ***

.op
.dc Vin 0 2.5 0.01
.print dc v(n1)
.end
```
<img width="1864" height="1492" alt="image" src="https://github.com/user-attachments/assets/b2a32157-5646-4ee7-a862-b137201f4907" />

## LAB FOR SHORT CHANNEL

AIM:-  DC voltage transfer characteristics of a resistive-load NMOS inverter circuit

**VARIABLES BEING SWEPT**:

**Primary Sweep**:

Vin = 0V to 2.5V in 0.1V steps

This is the main input voltage sweep to get the transfer characteristic

**Secondary Sweep :**
Vdd = 0V to 2.5V with "PJS" parameter (likely intended as parametric sweep)

**Spice Command**
```
*** MODEL Descriptions ***

*** NETLIST Description ***

M1 vdd n1 0 0 nmos W=0.375u L=0,25u  
R1 in n1 55  
Vdd vdd 0 2.5  
Vin in 0 2.5  

*** Choose one model library ***
.lib "tsmc_025um_model.mod" CMOS_MODELS
* OR *
*.include "mosis_lum_model.mod"

*** SIMULATION Commands ***

.op
.dc Vin 0 2.5 0.01
.print dc v(n1)
.end
```
<img width="1862" height="1478" alt="image" src="https://github.com/user-attachments/assets/343bf914-fbb1-492c-9123-10bb4d09afd8" />
