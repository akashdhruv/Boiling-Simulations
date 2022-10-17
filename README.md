<p align="left">
  <img src="./icon.gif" width="290" style="border:none;background:none;"/>
</p>

# <p align="left"> Boiling Simulations </p>

This repository provides a template for a lab notebook for running pool and flow boiling simulations using Flash-X (https://github.com/Flash-X/Flash-X), a multiphysics scientific software instrument. Design and organization of this notebook serves as a tutorial to setup production simulations for multiphase fluid-flow problems, archive data, perform visualization and data analysis, and maintain records/notes for scientific reproducibility and accountability. 

Primary goal for this project is to provide a more organized interface to work with Flash-X, and enable its use for data acquisition for various applications involving high-fidelity simulations and machine learning.

## Dependencies

Flash-X can enable use of various 


### Jobrunner

Management of simulations and software stack is performed using Jobrunner (https://github.com/akashdhruv/Jobrunner)

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
$ tree Project
├── Jobfile
├── environment.sh
├── JobObject1
|── JobObject2
    ├── Jobfile
    ├── flash.par
    ├── flashx
    ├── setupScript.sh
    ├── submitScript.sh
    ├── preProcess.sh
    ├── Config1
    ├── Config2
        ├── Jobfile
        ├── flash.par
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
