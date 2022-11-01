# Bash file to load modules and set
# environment variables for compilers
# and external libraries

# Set this to the required 
# site directory, refer to 
# sites/README.md for details
JobSite="sedona"

# Load modules for
# the site directory
source $(realpath sites/$JobSite)/Modules.sh

# Set MPI_HOME by quering path 
# loaded by site module
export MPI_HOME=$(which mpicc | sed s/'\/bin\/mpicc'//)

# Export project home
export PROJECT_HOME=$(realpath .)

# Path to parallel HDF5 installtion with fortran support
if [ $(which h5pfc) ]; then
   export HDF5_HOME=$(which h5pfc | sed s/'\/bin\/h5pfc'//)
else
   export HDF5_HOME="$(realpath software/HDF5)/install-$JobSite"
   BuildLocalHDF5="TRUE"
fi

# Store path to amrex as environment variable
export AMREX2D_HOME="$(realpath software/AMReX)/install-$JobSite/2D"
export AMREX3D_HOME="$(realpath software/AMReX)/install-$JobSite/3D"

# Path to Flash-X
export FLASH_HOME=$(realpath software/Flash-X)

# Path to Flash-X site/makefile
FlashSite=$(realpath sites/$JobSite)

# Output information to stdout
echo "----------------------------------"
echo "Boiling Simulations Environment:"
echo "PROJECT_HOME=$PROJECT_HOME"
echo "MPI_HOME=$MPI_HOME"
echo "HDF5_HOME=$HDF5_HOME"
echo "FLASH_HOME=$FLASH_HOME"
echo "FLASH_SITE=$FlashSite"
echo "AMREX2D_HOME=$AMREX2D_HOME"
echo "AMREX3D_HOME=$AMREX3D_HOME"
echo "----------------------------------"
