# setup the problem
cd $FLASH_HOME && ./setup incompFlow/FlowBoiling -auto -2d -nxb=16 -nyb=16 -maxblocks=100 \
	-site=$FlashSite +amrex +parallelIO SimForceInOut=True IOWriteGridFiles=True

# compile the simulation and copy files
cd $FLASH_HOME/object && make -j && cp flashx Makefile.h setup_call $JobNodeDir/

# copy AMReX configuration
cd $AMREX2D_HOME/lib/pkgconfig && cp amrex.pc $JobNodeDir/

# chdir into node directory and do clean up
cd $JobNodeDir && rm -rf $FLASH_HOME/object
