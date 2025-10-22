#  Floorplanning in OpenROAD

##  What is Floorplanning?
Floorplanning is the **first major step** in the physical design flow, defining the **physical structure** of an integrated circuit (IC).  
It determines the **chip area, core boundary, placement of macros, I/O pins, and power grid**, providing a blueprint for placement and routing.

---

##  Requirements Before Floorplanning
Before starting floorplanning, the following inputs and setup are essential:

### 1. **Technology Files**
- **LEF (Library Exchange Format)** – Defines cell dimensions, metal layers, routing rules, sites, and obstructions.  
- **Tech LEF** – Describes process-level design rules and layer information.  
- **Liberty (.lib)** – Contains timing, power, and functional information for standard cells.

### 2. **Logical Design Data**
- **Synthesized Netlist (.v)** – Gate-level netlist output from synthesis (mapped to the standard cell library).  
- **Design Constraints (.sdc)** – Includes clock definitions, input/output delays, and timing constraints.

### 3. **Physical Design Inputs**
- **I/O List or Pin Placement File (.io)** – Lists signal names and their preferred sides.  
- **Macro Placement Info (optional)** – For hard macros like SRAMs, PLLs, or IP blocks.

### 4. **Environmental & Design Rules**
- Core utilization target (e.g., 40–60%)  
- Aspect ratio (height/width)  
- Power planning strategy (ring, mesh, straps)  
- Row height and site type defined in LEF  

---

## 🧩 Steps in Floorplanning

### 1. **Define Die and Core Area**
Set total chip (die) and core dimensions using utilization and aspect ratio.
```tcl
initialize_floorplan -utilization 0.45 -aspect_ratio 1.0 -core_space {2 2 2 2} -site CORE
```
---

### 2️⃣ Place Macros
- Fix positions of large blocks such as **memories, analog IPs, and PLLs** near the **core boundaries**.  
- Maintain adequate **routing channels** between macros and between macros and the core boundary.  
- Orient macros to align with power rails and minimize wirelength.

---

### 3️⃣ Place I/O Pins
- Define the positions of **input/output pads** around the **core perimeter**.  
- Follow signal grouping (e.g., data, control, power) for efficient routing.  
- Use **logical-to-physical pin mapping** if required by the design constraints.  

---

### 4️⃣ Create Power Distribution Network (PDN)
- Generate **power (VDD)** and **ground (VSS)** rings around the core.  
- Add **metal straps** and **rails** to distribute power ev

