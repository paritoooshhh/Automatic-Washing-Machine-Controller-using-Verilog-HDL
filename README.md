# Washing Machine Controller (RTL Design)

A modular **FSM-based washing machine controller** implemented in **Verilog HDL**, designed to simulate real-world appliance behavior with multiple washing modes and timer-driven control.

---

## Project Overview

This project models the internal control logic of a modern washing machine using a **finite state machine (FSM)**.
The controller manages different washing cycles by coordinating actuators such as valves, motors, and pumps based on selected modes.

The design focuses on:

* Realistic washing behavior
* Modular RTL architecture
* Scalable design for future enhancements

---

## Features

* FSM-based control system
* 11 washing modes (real panel inspired)
* Timer-driven state transitions
* Separate control for wash and spin motors
* Modular Verilog design
* Time-remaining counter support
* Scalable architecture (V2 ready)

---

## Architecture

```text
                +----------------------+
mode_select --->|   MODE CONTROLLER    |
                +----------+-----------+
                           |
                           v
                +----------------------+
                |   TIMER LOOKUP       |
                +----------+-----------+
                           |
                           v
                +----------------------+
                |   TIMER COUNTER      |
                +----------+-----------+
                           |
                     timer_done
                           |
                           v
                +----------------------+
                |    WASHING FSM       |
                +----------+-----------+
                           |
                           v
                +----------------------+
                |  ACTUATOR CONTROL    |
                +----------------------+
```

---

##  Supported Modes

* Normal
* Quick Wash
* Super Clean
* Delicates
* Bedsheet
* Jeans
* Drain + Spin
* Rinse + Spin
* Tub Clean
* Eco Tub Clean
* Presoak + Wash

---

## Actuator Control

The controller operates key washing machine components:

* Water inlet valve
* Drum motor (wash mode)
* Drum motor (spin mode)
* Drain pump
* Door lock system
* Buzzer (cycle completion)

---

## Project Structure

```text
washing-machine-controller/

rtl/
tb/
docs/

README.md
design_spec.md
```

---

## Design Note

For detailed FSM design, timing tables, and system specifications, refer to:

`design_spec.md`

---

## Author

**Paritosh Tanneru**
ECE 4th semester — IIIT Kottayam

---
