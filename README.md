## Repository for Pool and Flow Boiling Simulations with Flash-X

### Instructions

Install `jobrunner`

```
pip3 install PyJobrunner==0.0.6
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
