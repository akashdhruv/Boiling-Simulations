# Bash script for `jobrunner` to install
# amrex

# Initialize amrex submodule
git submodule update --init $JobNodeDir/AMReX

# chdir into amrex,
cd $JobNodeDir/AMReX

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
