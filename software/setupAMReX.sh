# Bash script for `jobrunner` to install
# amrex

# chdir into current file directory
cd $JobTreeDir

# Initialize amrex submodule
git submodule update --init $JobTreeDir/AMReX

# chdir into amrex,
# and checkout the desired SHA
cd $JobTreeDir/AMReX

# configure and install amrex in 2D
make clean
./configure --dim=2 --prefix=$AMREX2D_HOME
make -j
make install

# configure and install amrex in 3D
make clean
./configure --dim=3 --prefix=$AMREX3D_HOME
make -j
make install
