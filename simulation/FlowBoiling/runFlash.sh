# cache the value of current directory
NodeDir=$PWD

# Run the actualy job using this target script
cd $JobWorkDir && mpirun $NodeDir/flashx -par_file job.input
