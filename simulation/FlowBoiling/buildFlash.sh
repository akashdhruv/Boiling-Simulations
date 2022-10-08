# chdir into Flash-X home directory
cd $FLASH_HOME

# setup the problem
./setup incompFlow/FlowBoiling -auto -2d -nxb=16 -nyb=16 \
	-maxblocks=100 -site=$FlashSite +amrex +parallelIO \
	SimForceInOut=True IOWriteGridFiles=True

# compile, copy and destroy object
cd object && make -j && cp flashx $JobTreeDir/flashx && cd .. && rm -rf object
