# load standard modules
import os
import toml
import click

# load the boxkit api
import boxkit.api as boxkit


@click.command(name="example")
@click.option("--input-key", required=True, help="input from toml configuration file")
def example(input_key):
    """
    Script to run the example
    """
    # load the inputs.toml and
    # get inputs configuration
    input_dict = toml.load("inputs.toml")[input_key]

    # empty list for dataset
    dataset_list = []

    # Create a list of datasets from input_dict
    for filename in input_dict["filenames"]:
        dataset_list.append(
            boxkit.read.dataset(
                os.getenv("PROJECT_HOME") + os.sep + filename, source="flash"
            )
        )

    # loop over datasetList
    for dataset in dataset_list:

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


if __name__ == "__main__":
    example()
