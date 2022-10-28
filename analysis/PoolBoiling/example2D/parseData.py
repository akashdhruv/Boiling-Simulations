# load the os module
import os

# load the boxkit api
import boxkit.api as boxkit

# set variable for the example HDF5
# file for an instance in time
filename = (
    os.getenv("PROJECT_HOME")
    + os.sep
    + "simulation/PoolBoiling/example2D/jobnode.archive/2022-10-26-sedona/INS_Pool_Boiling_hdf5_plt_cnt_0001"
)

# Create a boxkit dataset
dataset = boxkit.read.dataset(filename, source="flash")

# Print dataset to show details
print(dataset)

# loop through blocks in dataset
for block in dataset.blocklist:

    # print block information
    print(block)

    # print block center
    # print(block.xcenter, block.ycenter)
   
    # print block bound
    # print(block.xmin, block.xmax, block.ymin, block.ymax)

    # print temperature
    # print(block['temp'])

    # print x - velocity
    # print(block['velx'])
