
# OpenROAD – Floorplanning & Placement

## 🧩 Overview
OpenROAD is an open-source toolchain for full ASIC physical design.  
This README focuses on the **Floorplanning** and **Placement** stages.

---

## 🏗️ Floorplanning
Defines chip structure before placement.

**Key Tasks**
- Set die/core area and utilization  
- Define aspect ratio, site, and rows  
- Place I/O pins, macros, and power grid  

**Command Example**
```tcl
initialize_floorplan -utilization 0.45 -core_space {2 2 2 2} -site CORE
```
## 📍 Placement

Determines exact cell positions within the floorplan.

✔Steps :-

1). Global placement – minimize wirelength (HPWL)

2).Detailed placement – legalization, row alignment

3).Filler insertion & optimization

**Command Example**
```
place_design

```
# 🔗 Important Links – OpenROAD (Floorplanning & Placement)

## 📘 Official Documentation
- [OpenROAD Main Documentation](https://openroad.readthedocs.io/en/latest/)
- [Floorplan Module – Initialize Floorplan](https://openroad.readthedocs.io/en/latest/main/src/ifp/README.html)
- [Placement Module – RePlAce / Detailed Placement](https://openroad.readthedocs.io/en/latest/main/src/gpl/README.html)

---

## 🧰 Tutorials & Guides
- [OpenROAD Flow Scripts Tutorial (RTL-to-GDS)](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html)
- [Getting Started with OpenROAD – Part 1 (Blog)](https://abdelrahmanhosny.me/tech/eda/2019-12-06-getting-started-with-openroad-1/)
- [OpenROAD Micro 2022 Tutorial (GitHub)](https://github.com/The-OpenROAD-Project/micro2022tutorial)
- [OpenROAD Flow Scripts Repository](https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts)

---

## 💻 Source Code & Tools
- [OpenROAD GitHub Repository](https://github.com/The-OpenROAD-Project/OpenROAD)
- [OpenROAD Application Notes](https://openroad.readthedocs.io/en/latest/main/src/app/README.html)
- [TritonFP (Floorplan Generator)](https://github.com/The-OpenROAD-Project/OpenROAD/tree/master/src/TritonFP)

---

## 📚 Research & Overview
- [OpenROAD Project – Wikipedia](https://en.wikipedia.org/wiki/OpenROAD_Project)
- [OnDevTra Physical Design Overview](https://ondevtra.com/physicaldesign.html)
- [DAC 2022 OpenROAD Paper – Complete RTL-to-GDS Flow](https://doi.org/10.1145/3489517.3530632)

---

## 🧩 PDK & Example Designs
- [Sky130 Open PDK Support in OpenROAD Flow](https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/tree/master/flow/platforms/sky130hd)
- [Nangate45 Example Flow](https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/tree/master/flow/platforms/nangate45)

