# Automatic Washing Machine Controller using Verilog HDL

Verilog RTL implementation of a **Finite State Machine (FSM) based washing machine controller** simulating wash, rinse, drain, and spin cycles.

---

# Washing Machine Controller (Verilog RTL)

## Overview

This project implements a **digital controller for a fully automatic washing machine using Verilog HDL**.

The system models the behavior of a real washing machine by controlling the washing cycle through a **Finite State Machine (FSM) architecture**.

The controller manages different stages of the washing process including:

- Water filling  
- Washing  
- Draining  
- Rinsing  
- Spinning  

The design focuses on **digital system design, FSM modeling, modular RTL development, and hardware simulation**.

---

# Project Objectives

- Design a **digital appliance controller using Verilog HDL**
- Implement **finite state machine based control logic**
- Simulate washing machine operation using hardware signals
- Develop **modular and scalable RTL architecture**
- Extend the design with **advanced features in future versions**

---

# System Architecture

**The washing machine controller is divided into several modules:**
washing_machine_controller

│

├── control_fsm

├── timer_unit

├── mode_selector

├── motor_controller

├── water_valve_controller

├── drain_controller

└── sensor_interface


---

# Washing Cycle Flow

The controller follows a standard washing sequence:

IDLE

↓

FILL_WATER

↓

WASH

↓

DRAIN

↓

RINSE

↓

SPIN

↓

DONE


Each stage activates specific outputs such as the **motor, water valve, or drain pump**.

---

# Inputs

| Signal | Description |
|------|-------------|
| clk | System clock |
| reset | Reset controller |
| start | Start washing cycle |
| mode | Washing mode selection |
| lid_open | Safety lid sensor |
| water_level | Water level sensor |

---

# Outputs

| Signal | Description |
|------|-------------|
| motor | Motor control signal |
| water_valve | Water inlet control |
| drain_pump | Drain water control |
| buzzer | Cycle completion indicator |

---

# FSM Design

The washing machine controller is implemented using a **Moore Finite State Machine**.

| State | Function |
|------|----------|
| IDLE | Wait for start command |
| FILL_WATER | Fill washing drum with water |
| WASH | Rotate drum for washing |
| DRAIN | Remove dirty water |
| RINSE | Clean water rinse cycle |
| SPIN | High speed spinning |
| DONE | End of washing cycle |

---

# Simulation

Simulation can be performed using:

- **Icarus Verilog**
- **GTKWave**
washing-machine-controller-verilog

## Version Roadmap

### V1 — Basic Washing Machine Controller

The first version implements the **core washing cycle logic**.

#### Features
- FSM based washing cycle controller
- Basic washing stages:
  - Fill Water
  - Wash
  - Drain
  - Rinse
  - Spin
  - Done
- Single washing mode (**Normal Mode**)
- Timer based cycle control
- Modular RTL implementation
- Simulation and waveform verification

---

### V2 — Advanced Appliance Controller

Future versions will expand the system to support **realistic washing machine features inspired by commercial appliances**.

#### Planned Features

##### Multiple Washing Modes
- Normal
- Quick Wash
- Delicates
- Jeans
- Energy Saving
- Rinse + Spin
- Eco Tub Clean

##### Adjustable Parameters
- Water Level Selection
- Wash Time Control
- Rinse Cycle Selection
- Spin Time Adjustment

##### User Controls
- Start / Pause
- Cycle Selection
- Delay End Timer

##### Safety Features
- Lid open detection
- Water level monitoring
- Automatic cycle interruption

##### Interface Improvements
- Seven segment display driver
- LED indicators for wash stages
- Mode indicators

---

## Future Improvements

Possible future extensions include:

- FPGA implementation
- PWM based motor control
- Sensor based automatic water level detection
- RTL to GDSII physical design flow using OpenLane
- Integration with a RISC-V based controller architecture

---

## Learning Outcomes

This project demonstrates:

- FSM design in Verilog
- Synchronous digital system design
- Modular RTL architecture
- Hardware simulation and verification
- Digital control system implementation

---

## Author

**Paritosh Tanneru**  
B.Tech Electronics and Communication Engineering  
IIIT Kottayam
