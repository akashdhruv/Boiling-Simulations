# File for `jobrunner` setup command

# chdir into Flash-X, and checkout main branch
cd $FLASHX_HOME && git checkout main

# set Flash-X makefile PATH
export FLASHX_SITE=$JOB_FILE_HOME
