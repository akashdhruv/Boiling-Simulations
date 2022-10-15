# cache the value of current working directory
NodeDir=$(realpath .)

# run Flash-X setup
cd $FLASH_HOME && ./setup $FlashOptions -2d -nxb=16 -nyb=16

# compile the simulation and copy files
cd $FLASH_HOME/object && make -j && cp flashx Makefile.h setup_call $NodeDir/

# copy AMReX configuration
cd $AMREX2D_HOME/lib/pkgconfig && cp amrex.pc $NodeDir/

# chdir into node directory and do clean up
cd $NodeDir && rm -rf $FLASH_HOME/object
