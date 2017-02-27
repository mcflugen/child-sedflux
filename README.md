# The Child-Sedflux Coupling Experiment

## Install Python

    $ curl https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh > miniconda.sh # Mac
    $ curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh > miniconda.sh # Linux
    $ bash ./miniconda.sh -b -f -p $(pwd)/conda
    $ export PATH=$(pwd)/conda/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/etc:/usr/lib

## Set the default channels

    $ conda config --add channels csdms-stack --file=$(pwd)/conda/.condarc
    $ conda config --add channels conda-forge --file=$(pwd)/conda/.condarc

## Install requirements

    $ conda install python=2.7 --file=requirements.txt
