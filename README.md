# Modification of TALYS files for TMC simulation.


## Description.


When using the Total Monte Carlo (TMC) method, a large number of simulations are performed using perturbed input data. The results of the simulations give an estimate of the effects of uncertainties in the input data. The TALYS software has an option called 'fymodel 4', in which TALYS uses pre-calculated fission fragment yield (Y<sub>ff</sub>) data from internal libraries. In order to make TALYS perform its simulations using perturbed input data, perturbed (Y<sub>ff</sub>) files can be created and placed in said libraries. Modifications must be made to several files in the TALYS source code in order to make the TALYS code select the perturbed files instead of the unperturbed files. This repository contains information about the process of implementing the necessary changes along with commented examples of all files that must be modified. The modified version of TALYS can then be used together with the Python program McPUFF found in the Github account UPTEC-F-23065.

## Table of contents.


- Requirements.
- Overview of file modifications.
- Installation.
- How to use the modified TALYS version for TMC simulations.
- License.

  ## Requirements.

  The modifications in this repository were made for TALYS version 1.96. TALYS is available for download at [TALYS](https://tendl.web.psi.ch/tendl_2021/talys.html).

  ## Overview of file modifications.

  The purpose of the modifications are to force TALYS to choose a specific 

  



