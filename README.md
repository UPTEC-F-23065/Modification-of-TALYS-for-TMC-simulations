# Modification of TALYS files for TMC simulation.


## Description.


When using the Total Monte Carlo (TMC) method, a large number of simulations are performed using perturbed input data. The results of the simulations give an estimate of the effects of uncertainties in the input data. The TALYS software has an option called 'fymodel 4', in which TALYS uses pre-calculated fission fragment yield (Y<sub>ff</sub>) data from internal libraries. In order to make TALYS perform its simulations using perturbed input data, perturbed Y<sub>ff</sub> - files can be created and placed in said libraries. Modifications must be made to several files in the TALYS source code in order to make the TALYS code select the perturbed files instead of the unperturbed files. To distinguish the perturbed Y<sub>ff</sub> - files, a unique string is added to the file name before the suffix. The modifications are activated by entering a specially introduced keyword in the TALYS input file. If the keyword is not entered, TALYS performs normal simulations. This repository contains information about the process of implementing the necessary changes along with commented examples of all files that must be modified. The modified version of TALYS can then be used together with the Python program McPUFF found at [McPUFF](https://github.com/UPTEC-F-23065/McPUFF.git)

## Table of contents.


- Requirements.
- Overview of file modifications.
- Installation.
- How to use the modified TALYS version for TMC simulations.
- License.

## Requirements.

The modifications in this repository were made for TALYS version 1.96. TALYS is available for download at [TALYS](https://tendl.web.psi.ch/tendl_2021/talys.html).
All code in this repository is meant for use with a Linux system.

## Overview of file modifications.

There is a call chain in TALYS for retrieving a file name and in total, there are five TALYS source files that must be modified in order to make TALYS use a file specified by the user instead of the normal files in the Y<sub>ff</sub> - file libraries. The following source files must be modified. ('input7.f' is created using 'input1.f' as a template and added to the TALYS source files.)
- talys.cmb
- checkkeyword.f
- talysinput.f
- input7.f
- massdis.f

In short, the modifications do the following: 
- A new variable holding the specific file name is declared in 'talys.cmb'.
- A new keyword for passing the specific file name through the TALYS input file is declared in 'checkkeyword.f '.
- A call to the new subroutine 'input7' is declared in the source file 'talysinput.f '
- The file name is read and stored by TALYS as the value of the new keyword by the subroutine 'input7'.
- An if-statement in 'massdis.f ' checks the value of the new keyword and adds a non-default value to the file name of the file TALYS uses.

The pdf-files included in this repository contains more detailed information about the modifications.

## Installation


First, a copy of TALYS 1.96 is needed (see 'Requirements'). If the build of TALYS fails due to memory problems, a possible solution is described in [Modifications_of_TALYS_file_code_build.pdf](https://github.com/UPTEC-F-23065/Modification_of_TALYS_for_TMC_simulation/blob/98d5790383ec52ea00d25e0fff205429880d593f/Modifications_of_TALYS_file_code_build.pdf). A modified copy of the shell script 'code_build.sh' is also included in this repository.

The modifications are implemented either by re-writing the source code files mentioned in 'Overview of file modifications', or by replacing the source files by the '.f ' files in this repository. TALYS will need to be recompiled after the source files have been altered.

## How to use the modified TALYS version for TMC simulations.


The modified TALYS version is meant to be used together with the Python program McPUFF, found at [McPUFF](https://github.com/UPTEC-F-23065/McPUFF.git). McPUFF calls TALYS during its execution and the only prerequisite is that the modified version of TALYS is compiled and on path.

## License


Everything in this repository is licensed under the terms of the GNU General
Public License, version 3. [License](https://github.com/UPTEC-F-23065/Modification_of_TALYS_for_TMC_simulation/blob/0e362615d513a9d40d9e6bad77ce465fc0009aed/LICENSE)




  

  



