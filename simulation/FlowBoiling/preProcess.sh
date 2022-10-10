# Run pre-processing scripts located
# in the current directory

# cache the value of current node
NodeDir=$PWD

# chdir into working directory and execute
cd $JobWorkDir && python3 $NodeDir/flow_boiling_heater.py
