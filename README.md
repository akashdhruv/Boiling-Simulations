<p align="center"> <img src="./icon.gif" width="350" style="border:none;background:none;"/> </p>

# <p align="center"> Boiling Simulations </p>

This repository provides a template for a lab notebook for running pool and flow boiling simulations using Flash-X (https://github.com/Flash-X/Flash-X), a multiphysics scientific software instrument. Design and organization of this notebook serves as a tutorial to setup production simulations for multiphase fluid-flow problems, archive data, perform visualization and data analysis, and maintain records/notes for scientific reproducibility and accountability. 

Primary goal for this project is to provide a more organized interface to work with Flash-X, and enable its use for data acquisition for various applications involving high-fidelity simulations and machine learning.

## Dependencies

A comprehensive lab environment to work with high-fidelity simulations should include,

- A scalable and performant computational solver.
- A well organized design of computational experiments that can handle complexities of parametric studies.
- Visualization tools to generate animations/images.
- Tools to extract/process information from simulation data to perform statistical/data analysis.

Flash-X addresses the first requirement by using AMReX (https://github.com/AMReX-Codes/amrex) $\textemdash$ a framework for block-structured Adaptive Mesh Refinement (AMR) $\textemdash$ for grid management, along with its native Application Programming Interface (API) to solve complex multiphase problems. Details of the numerical solver can be found in our previous publications,

- [A Formulation for High-Fidelity Simulations of Pool Boiling in Low Gravity](https://www.sciencedirect.com/science/article/abs/pii/S030193221930165X)
- [An Investigation of The Gravity Effects on Pool Boiling Heat Transfer via High-Fidelity Simulations](https://www.sciencedirect.com/science/article/abs/pii/S0017931021009315?dgcid=author#!)

To organize computational experiments we use Jobrunner (https://github.com/akashdhruv/Jobrunner).

### AMReX

### FlashKit

### BoxKit


## Organization 

## Usage

## Contribution

The repository is organized as a system of bash scripts that are stitched together using the `Jobrunner` command line interface. At the top level you will find `enivronment.sh` bash script which initializes environement variables and libraries that a can edit to your 

```
pip3 install PyJobrunner==1.5
```


Update `PATH` to include `$HOME/local/bin` where `jobrunner` command line interface is located


### Organization

```
$ tree Boiling-Simulations

├── Jobfile
├── environment.sh
├── sites
    ├── hello
        ├── Makefile.h
├── software
    ├── Flash-X
    ├── AMReX
    ├── FlashKit
├── simulation
    ├── PoolBoiling
        ├── Jobfile
        ├── flashOptions.sh
        ├── example2D
            ├── Jobfile
            ├── flashOptions.sh
            ├── flashBuild.sh
            ├── flashRun.sh
            ├── flash.par
    ├── FlowBoiling
├── analysis
    ├── requirements.txt
```

Setup software stack

```
jobrunner setup software
```

Setup simulation

```
jobrunner setup simulation/pool_boiling
```

Run simulation

```
jobrunner submit simulation/pool_boiling
```
