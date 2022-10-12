## Repository for Pool and Flow Boiling Simulations with Flash-X

### Instructions

The repository is organized as a system of bash scripts that are stitched together using the `Jobrunner` command line interface. At the top level you will find `enivronment.sh` bash script which initializes environement variables and libraries that a can edit to your 

```
pip3 install PyJobrunner==1.5
```


Update `PATH` to include `$HOME/local/bin` where `jobrunner` command line interface is located


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
