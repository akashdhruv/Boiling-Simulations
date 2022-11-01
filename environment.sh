# Bash file to load modules and set
# environment variables for compilers
# and external libraries

# Set this to the required 
# site directory, refer to 
# sites/README.md for details
JobSite="sedona"

# Load modules for
# the site directory
source $(realpath sites/$JobSite)/modules.sh

# Get mpicc path and
# then remove /bin/mpicc 
# to get set MPI_HOME
MPI_HOME=$(which mpicc)
MPI_REMOVE=/bin/mpicc
export MPI_HOME=${MPI_HOME//$MPI_REMOVE/}

# Export project home
export PROJECT_HOME=$(realpath .)

# Path to parallel HDF5 installtion with fortran support
export HDF5_HOME="$(realpath software/HDF5)/install-$JobSite"

# Store path to amrex as environment variable
export AMREX2D_HOME="$(realpath software/AMReX)/install-$JobSite/2D"
export AMREX3D_HOME="$(realpath software/AMReX)/install-$JobSite/3D"

# Path to Flash-X
export FLASH_HOME=$(realpath software/Flash-X)

# Path to Flash-X site/makefile
FlashSite=$(realpath sites/$JobSite)
