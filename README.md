# 🖥️ 24-Bit Two-Pass Assembler
**C Systems Programming Laboratory Project | OpenU 2025A**

## 📖 Overview
[cite_start]This project is a high-performance, modular Assembler developed in **ANSI C** for a theoretical 24-bit architecture computer[cite: 13, 16]. [cite_start]The software translates symbolic assembly language into executable binary machine code through a systematic multi-stage pipeline[cite: 58, 61, 347].

[cite_start]The system simulates a CPU with **8 general-purpose registers** (`r0`-`r7`) and a memory space consisting of **24-bit words**[cite: 72, 73, 76].



## ✨ Core Features

### 1. Pre-Assembler (Macro Expansion)
* [cite_start]Scans the initial source files (`.as`) for macro definitions (`mcro`)[cite: 152, 155, 174].
* [cite_start]Expands macros into a processed `.am` file ready for the assembly stages[cite: 173, 485].
* [cite_start]Implements dynamic memory allocation for macro storage to ensure scalability and efficiency[cite: 646].

### 2. First Pass (Symbol Analysis)
* [cite_start]Identifies labels and populates the **Symbol Table** using linked lists[cite: 199, 348, 646].
* [cite_start]Calculates memory offsets for the Instruction Counter (IC) and Data Counter (DC)[cite: 373, 426].
* [cite_start]Validates operand legality and ensures addressing modes are compatible with opcodes[cite: 410, 420, 446].

### 3. Second Pass (Binary Synthesis)
* [cite_start]Encodes final 24-bit binary words using the **A.R.E (Absolute, Relocatable, External)** encoding model[cite: 105, 107, 291].
* [cite_start]Resolves symbol addresses and calculates relative distances for jump instructions[cite: 125, 360, 477].
* [cite_start]Generates the final hexadecimal memory image for the object file[cite: 86, 568].

## 🛠️ Technical Specifications
* [cite_start]**Instruction Set:** Supports 16 base opcodes including `mov`, `add`, `lea`, `jmp`, and `stop`[cite: 89, 93].
* [cite_start]**Addressing Modes:** Supports Immediate (#), Direct, Relative (&), and Register Direct methods[cite: 110, 125, 127].
* [cite_start]**Memory Management:** The code is designed to be loaded starting from address **100**[cite: 352, 373, 427].
* [cite_start]**Data Handling:** Integrated support for `.data` (integers) and `.string` (ASCII) directives[cite: 194, 210, 211].

## 📂 Project Structure
* [cite_start]`src/`: Implementation source files (`.c`)[cite: 15].
* [cite_start]`include/`: Header files for data structures and function prototypes (`.h`)[cite: 15].
* [cite_start]`Makefile`: Automates the build process with strict compilation flags: `-Wall -ansi -pedantic`[cite: 16].
* [cite_start]`*.as`: Sample assembly source files used for system testing[cite: 19, 490].

## 🚀 Getting Started

### Compilation
[cite_start]Build the project using the included Makefile[cite: 16]:

### Usage
[cite_start]Execute the assembler by providing filenames as command-line arguments without extensions[cite: 482, 491, 653]:
./assembler file1 file2

## 📊 Generated Output Files
[cite_start]The assembler creates the following files for each valid input[cite: 484]:
1. **.am**: [cite_start]The source file after macro expansion[cite: 174, 485].
2. **.ob**: [cite_start]Object file containing the machine code in hexadecimal format[cite: 86, 486, 560].
3. **.ent**: [cite_start]Table of entries for symbols defined as .entry[cite: 488, 570].
4. **.ext**: [cite_start]Table of external references for symbols defined as .extern[cite: 487, 573].

---
**Disclaimer:** [cite_start]This project was developed for academic purposes as part of the Systems Programming Laboratory course (20465)[cite: 2, 61]. [cite_start]It strictly adheres to the ISO C90 (ANSI C) standard and the original task specifications[cite: 16, 651].
```bash
make
