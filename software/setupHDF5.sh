# Bash script for `jobrunner`
# to install HDF5

# Initialize amrex submodule
git submodule update --init HDF5

# chdir into amrex and checkout desired branch
cd HDF5 && git checkout 93754ca

# configure HDF5
./autogen.sh
./configure --enable-parallel --enable-fortran CC=mpicc CXX=mpicxx \
	FC=mpif90 FF=mpif90 F77=mpif90 --prefix=$HDF5_HOME

# compile and install
make -j && make install
