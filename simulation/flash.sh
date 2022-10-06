# File for `jobrunner` setup command

# Initialize Flash-X submodule
git submodule update --init $FLASHX_HOME

# set Flash-X makefile PATH
export FLASHX_SITE=$JOB_FILEDIR
