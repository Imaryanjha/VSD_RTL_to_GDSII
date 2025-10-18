
# 🏗️ Introduction to SkyWater SKY130 PDK

## 🌐 What is a PDK?

A **Process Design Kit (PDK)** is a collection of files and models provided by a semiconductor foundry that describe how transistors and other components behave and how they should be fabricated on silicon.  
It acts as a **bridge between circuit design and physical chip fabrication**.

---

## ⚙️ What is SKY130?

**SkyWater SKY130** is a **130 nm open-source CMOS process node** released by **SkyWater Technology Foundry** in collaboration with **Google**.

It is the **first open-source PDK** in the world, allowing anyone to design, simulate, and tape-out real silicon chips **without NDAs or proprietary licenses**.

---

## 🧩 Key Features

- 🧱 **Technology Node:** 130 nm (0.13 µm)
- ⚡ **Transistor Types:** 1.8V core, 5V I/O, native & high-voltage devices
- 🧮 **Supported Devices:** NMOS, PMOS, capacitors, resistors, diodes, inductors
- 🧰 **Open Tools Support:** Compatible with open-source tools like:
  - **Magic** (layout editor)
  - **KLayout** (physical verification)
  - **ngspice / Xyce** (circuit simulation)
  - **OpenLANE / OpenROAD** (digital flow)
  - **OpenRAM** (memory compiler)
- 🧾 **Models:** Includes SPICE, DRC, LVS, parasitics, and layout rules

---

## 🧠 Why It’s Important

Before SKY130, all PDKs were **proprietary and under NDA**, meaning students and researchers couldn’t freely experiment with real foundry data.

SKY130 democratized chip design by:
- Enabling **open-source silicon research**
- Allowing **academic tape-outs**
- Supporting **educational and hobbyist VLSI projects**

---

## 🧪 Example Open-Source Projects Using SKY130

- **Google/Efabless Shuttle Program:** Real chip fabrication from open designs  
- **OpenRAM:** Open-source SRAM compiler built using SKY130  
- **TinyTapeout:** Community-driven educational chip design initiative  

---

## 📚 Directory Structure 
```
sky130A/
├── libs.ref/ → Reference cells and SPICE models
├── libs.tech/ → DRC/LVS/PEX tech files
├── magic/ → Magic layout configurations
├── pdk/ → Core PDK definitions
└── techfile/ → Layer and rule descriptions
```


---

## 🚀 Getting Started

You can explore and use the SKY130 PDK through open platforms like:

- [Efabless OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)
- [Google/SkyWater Open PDK](https://github.com/google/skywater-pdk)

Installation (via open_pdks):
```bash
git clone https://github.com/RTimothyEdwards/open_pdks.git
cd open_pdks
./configure --enable-sky130-pdk
make
sudo make install









