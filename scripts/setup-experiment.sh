#! /bin/bash

MINICONDA_URL="https://repo.continuum.io/miniconda/Miniconda3-latest"

if [[ $(uname) == "Darwin" ]]; then
  OS_NAME="MacOSX-x86_64"
else
  OS_NAME="Linux-x86_64"
fi

curl $MINICONDA_URL-$OS_NAME.sh > miniconda.sh
bash ./miniconda.sh -b -f -p $(pwd)/conda
export PATH=$(pwd)/conda/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/etc:/usr/lib

conda config --add channels csdms-stack --file=$(pwd)/conda/.condarc
conda config --add channels conda-forge --file=$(pwd)/conda/.condarc

conda install python=2.7 --file=requirements.txt
