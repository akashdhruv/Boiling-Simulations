# cache the value of current directory
NodeDir=$PWD

# Run pre-processing scripts located in the current directory to setup
cd $JobWorkDir && python3 $NodeDir/flow_boiling_heater.py
