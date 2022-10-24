# Bash file to load modules and set
# environment variables for compilers
# and external libraries

# MPI module. This should be available
# as standard module on a cluster. If not,
# build your own MPI and set
# PATH, LD_LIBRARY_PATH

# Flash-X requires that an environment variable
# MPI_HOME is available that points to the
# path to MPI installation
module load openmpi-4.1.1

# Export project home
export PROJECT_HOME=$(realpath .)

# Path to parallel HDF5 installtion with fortran support
export HDF5_HOME="$(realpath software/HDF5)/install"

# Store path to amrex as environment variable
export AMREX2D_HOME="$(realpath software/AMReX)/install/2D"
export AMREX3D_HOME="$(realpath software/AMReX)/install/3D"

# Path to Flash-X
export FLASH_HOME=$(realpath software/Flash-X)

# Path to Flash-X site/makefile
FlashSite=$(realpath sites/hello)
