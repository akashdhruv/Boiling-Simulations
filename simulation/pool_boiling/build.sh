# chdir into Flash-X home directory
cd $FLASHX_HOME

# setup the problem
./setup incompFlow/PoolBoiling -auto -2d -nxb=16 -nyb=16 \
	-maxblocks=100 -site=$FLASHX_SITE +amrex +parallelIO

# compile, copy and destroy object
cd object && make -j && cp flashx $JOB_FILEDIR/flashx && cd .. && rm -rf object
