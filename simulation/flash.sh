# File for `jobrunner` setup command

# initialize Flash-X submodule
git submodule update --init $FLASHX_HOME

# chdir into Flash-X, and
# checkout main branch
cd $FLASHX_HOME && git checkout main

# set Flash-X makefile PATH
export FLASHX_SITE=$JOB_FILE_HOME
