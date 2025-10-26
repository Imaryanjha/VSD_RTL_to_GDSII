



# 🚀 Installation Commands
## 💡 Why This Task is Important
After analyzing circuits at the transistor level, it’s time to see how they are **physically realized on silicon**.  
This exercise introduces you to **OpenROAD**, a fully open-source RTL-to-GDSII flow used in both academic and industry research.

## 🧰 Prerequisites

```bash
sudo apt update
sudo apt install -y build-essential git cmake python3 python3-pip \
tcl-dev tk-dev libx11-dev libxrender-dev libxext-dev libboost-all-dev \
libeigen3-dev flex bison libreadline-dev
```
---
# ⚙️ Step 1 — Clone OpenROAD Flow Scripts

Clone the main repository with all submodules:
```
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts.git

```
If you forgot --recursive, initialize submodules manually:

```
cd OpenROAD-flow-scripts
git submodule update --init --recursive
```
Check that the repository cloned correctly:
```
ls
cd OpenROAD-flow-scripts
ls
git submodule status
```

You should see directories like flow/, tools/, docker/, and a README.md file.

---
# ⚙️ Step 2 — Build and Install OpenROAD

Move into the flow directory:
```
cd flow
```

Set up the environment and install required dependencies:
```
sudo ./installers/BuildEnv.sh
make
```
To verify installation:
```
./build/openroad
```

If the terminal shows the OpenROAD banner (OpenROAD vX.Y build...), your setup is complete ✅

---
# 🧩 Step 3 — Run Floorplan and Placement

Now, execute only the Floorplan and Placement stages.

Run:
```
cd flow
make DESIGN_CONFIG=./designs/asap7/gcd/config.mk floorplan
make DESIGN_CONFIG=./designs/asap7/gcd/config.mk place
```


Verify:

Core area and die dimensions are generated.

Standard cells are placed successfully.
# Step 4

Execute Floorplan + Placement ⚠️
```
cd flow
make
```
🎯 What Happens Here:

---

📐 Floorplan Stage: Defines core area, die dimensions, I/O placement

📍 Placement Stage: Arranges standard cells to minimize delay & congestion

⛔ STOPS Before Routing (as required)

# Step 5
 Visualize Results in GUI 
 ```
make gui_final
```
<img width="1716" height="1167" alt="image" src="https://github.com/user-attachments/assets/0b30e0fb-9fa6-48fa-b4ce-75ce46bbdcd7" />



Main layout view showing placed standard cells

---

<img width="1716" height="1166" alt="image" src="https://github.com/user-attachments/assets/df80dfc1-f38e-41bf-8e92-75a260ed112d" />


Visual representation of pin distribution

---
<img width="1984" height="1179" alt="image" src="https://github.com/user-attachments/assets/6acf1768-93fb-4ece-993c-207b9acd9893" />

Congestion analysis (for future routing stages)

---
## 🔍 Understanding the Visualizations

### 🧱 Cell Placement Pattern
- **Rows:** Standard cells are aligned in neat horizontal rows to ensure power and ground rail continuity.  
- **Power Rails (VDD/VSS):** Located between alternate rows, supplying power and ground to the standard cells.  
- **White Spaces:** Reserved gaps between cells and rows to facilitate **routing channels** and reduce congestion.  
- **Color Coding:**  
  - 🟦 **Buffers / Inverters** — small rectangular cells often repeated in timing paths.  
  - 🟩 **Logic Gates** — AND, OR, NAND, NOR cells in medium-sized blocks.  
  - 🟨 **Flip-Flops / Sequential Cells** — slightly larger cells, generally placed closer to the clock tree structure.  

This pattern ensures balanced power distribution, minimal delay, and optimal routing efficiency.

---

### 📊 Congestion Analysis
- 🟩 **Green:** Low congestion — easy routing with sufficient free tracks.  
- 🟨 **Yellow:** Medium congestion — routing density is moderate; tool may perform local optimization.  
- 🟥 **Red:** High congestion — routing is difficult; placement may need refinement or re-floorplanning.  
- 🟦 **Blue areas:** No congestion — typically reserved regions, blockages, or macro areas not used for routing.  



