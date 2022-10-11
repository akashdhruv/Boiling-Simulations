# cache the value of current directory
NodeDir=$(realpath .)

# Run pre-processing scripts located in the current directory
cd $JobWorkDir && python3 $NodeDir/poolBoilingHeater.py
