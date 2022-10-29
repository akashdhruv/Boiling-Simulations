# Run the actualy job using this target script
cd $JobWorkDir && mpirun $JobWorkDir/job.target -par_file job.input
