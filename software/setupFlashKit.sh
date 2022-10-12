# initialize FlashKit submodule
git submodule update --init FlashKit

# chdir into FlashKit and checkout desired branch
cd FlashKit && git checkout 364c99d

# install in development mode
python3 setup.py develop --user
