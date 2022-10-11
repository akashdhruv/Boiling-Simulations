# cache the value of current directory
NodeDir=$PWD

# Run pre-processing scripts located in the current directory
cd $JobWorkDir && python3 $NodeDir/pool_boiling_heater.py
