# Modification of TALYS files for TMC simulation.


## Description.


When using the Total Monte Carlo (TMC) method, a large number of simulations are performed using perturbed input data. The results of the simulations give an estimate of the effects of uncertainties in the input data. The TALYS software has an option called 'fymodel 4', in which TALYS uses pre-calculated fission fragment yield (Y<sub>ff</sub>) data from internal libraries. In order to make TALYS perform its simulations using perturbed input data, perturbed Y<sub>ff</sub> - files can be created and placed in said libraries. Modifications must be made to several files in the TALYS source code in order to make the TALYS code select the perturbed files instead of the unperturbed files. To distinguish the perturbed Y<sub>ff</sub> - files, a unique string is added to the file name before the suffix. The modifications are activated by entering a specially introduced keyword in the TALYS input file. If the keyword is not entered, TALYS performs normal simulations. This repository contains information about the process of implementing the necessary changes along with commented examples of all files that must be modified. The modified version of TALYS can then be used together with the Python program McPUFF found in the Github account UPTEC-F-23065. 

## Table of contents.


- Requirements.
- Overview of file modifications.
- Installation.
- How to use the modified TALYS version for TMC simulations.
- License.

## Requirements.

The modifications in this repository were made for TALYS version 1.96. TALYS is available for download at [TALYS](https://tendl.web.psi.ch/tendl_2021/talys.html).

## Overview of file modifications.

There is a call chain in TALYS for retrieving a file name and in total, there are five TALYS source files that must be modified in order to make TALYS use a file specified by the user instead of the normal files in the Y<sub>ff</sub> - file libraries. The following source files must be modified. ('input7.f' is created using 'input1.f' as a template and added to the TALYS source files.)
- talys.cmb
- talysinput.f
- input7.f
- checkkeyword.f
- massdis.f

In short, the modifications do the following: 
- A new variable holding the specific file name is declared in 'talys.cmb'.
- A new keyword for passing the specific file name through the TALYS input file is declared in 'checkkeyword.f'.
- A call to the new subroutine 'input7' is declared in the source file 'talysinput.f'
- The file name is read and stored by TALYS as the value of the new keyword by the subroutine 'input7'.
- An if-statement in 'massdis.f' checks the value of the new keyword and adds a non-default value to the file name of the file TALYS uses.



  

  



