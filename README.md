# Binary Acquisition Module

It is a simple module aiming to receive **any source code file** written in any language and compiles/links it to an executable file, mainly **PE** for now.
it can also receive **any binary executable** file with any extension :)
This module then takes the output executable and lifts it to LLVM Intermediate Representation to do analysis on.
It is equipped with a *scrapper* script that cleanses any dataset filesystem **written by NIST**

# Folders

**C** folder contains our 2017 Juliette Test Suite for C/C++ V1.3
**C_comp** contains the same dataset but after building all source files.
**Ghidra** contains the infamous disassembly tool Ghidra, good for comparing our work and debugging.
**openssl** contains openssl dependency files so Ghidra and Retdec can work without errors.
**GP** just a folder containing a python virtual environment, not our main Venv.
**crosscomp** contains our active scripts which processes user input and cleanses the given dataset.
**crosscomp\GP_Env** contains our main python Virtual Env, which my scripts use.


# Files

## Create files and folders

**crosscomp\labelcrawler.ps1** is our data cleanser, it takes a dataset folder after building and crawls for labels inside each file, then extracts those labels along with the input file.
your output files is named **labels.txt** inside the dataset folder you just passed.


**crosscomp\scripty.ps1** our CROSS COMPILER, the user puts all his source files (or binary executables) in a folder then runs this script with the absolute path of this folder, it will build all his source files into a single executable then lifts it to LLVM Intermediate Representation ready for next-step analysis.
as the name suggests, it is a cross compiler, it can accept any source file written in any language for any processor architecture.
*currently we support C, CPP, Python, any binary files*

# Input and Output Directory
## For input Directory:
you should make a folder and dump all your source files or binary executables there.
## For output Directory:
you will find a new folder called "**output**" in the same folder where you put your input files,
the output directory will contain the executable PE file and the LLVM file ready to be analyzed.

