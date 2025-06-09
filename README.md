# 🕒 Digital Clock in Verilog

This project implements a **digital clock** using Verilog HDL. The clock counts **seconds**, **minutes**, and **hours**, and resets correctly after reaching 60 seconds, 60 minutes, and 24 hours. It is designed to be simulated using **Xilinx ISE**.

## 🔧 Module: `Digital_Clock.v`

### Ports:
| Port Name | Direction | Width | Description                 |
|-----------|-----------|--------|-----------------------------|
| `Clk_1sec`| Input     | 1 bit  | 1 Hz clock signal           |
| `reset`   | Input     | 1 bit  | Active-high asynchronous reset |
| `seconds` | Output    | 6 bits | Seconds counter (0–59)     |
| `minutes` | Output    | 6 bits | Minutes counter (0–59)     |
| `hours`   | Output    | 5 bits | Hours counter (0–23)       |

The module uses a positive-edge clock and reset to increment time accurately.

## 🧪 Testbench: `Digital_Clock_tb.v`

The testbench simulates:
- A 1 Hz clock by toggling `Clk_1sec` every 1 ns.
- A brief reset pulse at the beginning.
- Clock operation for several hundred time units to observe normal incrementing and rollover behavior.

### Output:
The testbench prints the current time to the console during simulation:

Time = 10 | H = 0, M = 0, S = 2
Time = 12 | H = 0, M = 0, S = 3



## ▶️ How to Run (Xilinx ISE):
1. Open the project in Xilinx ISE.
2. Add `Digital_Clock.v` and `Digital_Clock_tb.v` to your project.
3. Set `Digital_Clock_tb.v` as the top module.
4. Run **Behavioral Simulation**.
5. View time progression in the **Simulation Waveform** or **Console Output**.




















