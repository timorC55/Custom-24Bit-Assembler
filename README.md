

🖥️ 24-Bit Two-Pass Assembler
C Systems Programming Laboratory Project | OpenU 2025A

📖 Overview
This project is a high-performance, modular Assembler developed in ANSI C for a custom 24-bit architecture. The software translates symbolic assembly language into binary machine code through a systematic multi-stage pipeline.


It is designed to handle a CPU with 8 general-purpose registers (
r0−r7
) and a 24-bit memory word model.


✨ Core Features
1. Pre-Assembler (Macro Expansion)
Scans the initial .as file for macro definitions (mcro).


Expands macros into a processed .am file ready for assembly.


Implements dynamic storage for macro names and content using linked lists.


2. First Pass (Symbol Analysis)
Identifies labels and populates the Symbol Table.


Calculates memory offsets for the Instruction Counter (IC) and Data Counter (DC).


Validates operand legality and addressing modes.


3. Second Pass (Binary Synthesis)
Encodes final 24-bit binary words using the A.R.E (Absolute, Relocatable, External) model.


Calculates final relative distances for jump instructions.


Generates the memory image and supporting export tables.


🛠️ Technical Specifications

Instruction Set: 16 base opcodes (e.g., mov, add, lea, jmp, stop).



Addressing Modes: Immediate (#), Direct (Label), Relative (&), and Register Direct.



Memory Image: Starts at address 100.



Data Support: Handling for .data (integers) and .string (ASCII).


📂 Project Structure

src/: Source code implementation files (.c).



include/: Header files for data structures and function prototypes (.h).


Makefile: Automates the build process with strict flags: -Wall -ansi -pedantic.


*.as: Sample assembly source files for testing.

🚀 Getting Started
Compilation
Build the project using the provided Makefile:

Bash

make
Usage
Execute the assembler by providing the filenames (without extensions):

Bash

./assembler file1 file2
📊 Generated Output Files

.am: Source file after macro expansion.


.ob: Object file containing the memory image in hexadecimal.



.ent: Entry symbols and their addresses.



.ext: External symbol references and usage locations.


Disclaimer: This project was developed by me as part of the academic requirements for the Systems Programming Laboratory course (20465). It strictly adheres to the standard C library.
+1

האם תרצי שאשלח לך גם רשימה של Topics (תגיות) באנגלית כדי שיהיה קל יותר למצוא את הפרויקט שלך בחיפוש?
