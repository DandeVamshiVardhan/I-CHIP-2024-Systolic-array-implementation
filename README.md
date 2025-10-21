

# I-CHIP-2024 Systolic Array Implementation

<p align="center">
	<img src="./SoC Design.png" alt="SoC Block Diagram" width="600"/>
</p>

## Overview

This repository presents a complete, modular, and industry-ready hardware/software co-design for a Systolic Array-based hardware accelerator SoC. The design leverages Xilinx Vivado, MicroBlaze soft processor, and AXI infrastructure to deliver high-performance, scalable matrix computation—ideal for next-generation AI, signal processing, and embedded compute applications.

**Key Features:**
- Highly modular Verilog/SystemVerilog codebase for rapid IP reuse and integration
- AXI4-compliant master/slave and custom IP blocks
- Vivado block design for seamless SoC assembly
- MicroBlaze integration for flexible software/hardware partitioning
- Matrix convolution accelerator IP for real-world AI/ML workloads
- Example C code for hardware/software co-design and validation

---
<p align="center">
	<img src="./Output.png" alt="Accelerator Output Example" width="500"/>
	<br><em>Sample output from the hardware accelerator</em>
</p>

---


## Why This Project?

This project demonstrates:
- **Innovation:** Systolic array architecture for parallel, high-throughput computation
- **Industry Relevance:** AXI4, Vivado, and MicroBlaze—standards in modern SoC and FPGA design
- **Scalability:** Easily extensible for larger arrays, new IP, or integration with custom software stacks
- **Professional Engineering:** Clean structure, documentation, and best practices for rapid adoption in commercial and research environments

## Project Structure

```
├── axi master and slave implementation/   # AXI4 master/slave Vivado project
├── hw_acc/                               # Example C code and platform files
├── ICHIP-PS1 overall processing element/ # Processing element Vivado project
├── ip_design_codes/                      # Custom IP Vivado project
├── manufactured_ip/                      # (If present) Pre-built IPs
├── matrix_convolution_ip/                # Matrix convolution accelerator IP
├── microblaze_accelerator_interface/     # MicroBlaze accelerator Vivado project
├── microblaze_ip_interface/              # Main SoC Vivado project (block design, sources)
│   └── soc.srcs/sources_1/bd/soc/hdl/    # Top-level SoC wrapper and HDL
├── AXI_INTC_MultiInterrupt_Debug_Log.txt # Debug logs
├── I-Chip PS1.pdf, I-Chip PS2.pdf        # Project documentation
└── README.md                             # This file
```


## Key Components

- **Systolic Array**: See `matrix_convolution_ip/src/systolic_array.v` for the main array logic.
- **Hardware Accelerator Wrapper**: See `matrix_convolution_ip/src/hardware_acceletor_wrapper.v` and Vivado block design files.
- **MicroBlaze SoC**: Top-level in `microblaze_ip_interface/soc.srcs/sources_1/bd/soc/hdl/soc_wrapper.v`.
- **AXI Master/Slave**: Implementations in `matrix_convolution_ip/src/axi-master.v` and `axi_slave.v`.
- **C Software Example**: See `hw_acc/src/helloworld.c` for a test application.


## Getting Started

1. **Open Vivado (2018.3 or compatible)**
2. Open the main project: `microblaze_ip_interface/soc.xpr`
3. Regenerate/validate the block design and IP as needed
4. Synthesize, implement, and generate bitstream
5. (Optional) Use SDK/Vitis to load and run the C test application on MicroBlaze


## Additional Notes

- Large simulation and waveform files are excluded from version control via `.gitignore`.
- For detailed IP configuration, see the `component.xml` in each IP directory.
- For documentation, refer to the included PDFs.

---

## Contact

For technical questions, collaboration, or commercial inquiries:

- **Project Lead:** Dande Vamshi Vardhan

## License

This project is provided for academic and demonstration purposes. For commercial licensing or integration, please contact the project lead.

---
**Tools:** Xilinx Vivado, MicroBlaze, Verilog/SystemVerilog, C
