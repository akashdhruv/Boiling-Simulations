# Bash file to load modules and set
# environment variables for compilers
# and external libraries

# MPI module. This should be available 
# as standard module on a cluster. If not, 
# build your own MPI and set 
# PATH, LD_LIBRARY_PATH
module load openmpi-4.1.1

# Load parallel HDF5 library. If serial HDF5
# is present alter setup options for Flash-X
module load hdf5-1.8.20

# Path for amrex
export AMREX2D_HOME=$JOB_FILE_HOME/software/amrex/install/2D
export AMREX3D_HOME=$JOB_FILE_HOME/software/amrex/install/3D

# Path to flashx
export FLASHX_HOME=$JOB_FILE_HOME/software/flashx
