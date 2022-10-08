# File for `jobrunner` setup command

# chdir into Flash-X, and checkout main branch
cd $FLASHX_HOME && git checkout 37872ca1

# set Flash-X makefile PATH
export FLASHX_SITE=$JOB_TREEDIR
