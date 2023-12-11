# Modification of TALYS files for TMC simulation.


## Description


When using the Total Monte Carlo (TMC) method, a large number of simulations are performed using perturbed input data. The results of the simulations give an estimate of the effects of uncertainties in the input data. The TALYS software has an option called 'fymodel 4', in which TALYS uses pre-calculated fission fragment data from internal libraries. In order to make TALYS perform its simulations using perturbed input data, perturbed fission fragment files can be created and placed in said libraries. Modifications must be made to several files in the TALYS source code in order to make the TALYS code select the perturbed files instead of the unperturbed files. This repository contains information about the process of implementing the necessary changes along with commented examples of all files that must be modified. The modified version of TALYS can then be used together with the Python program McPUFF

## Table of contents


- Requirements
- 



