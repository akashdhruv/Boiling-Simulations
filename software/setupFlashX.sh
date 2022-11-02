# initialize Flash-X submodule
git submodule update --init Flash-X

# chdir into Flash-X and checkout desired SHA
cd Flash-X && git checkout $FlashX_TAG 
