#!/usr/bin/env bash
CONDA_ENV="racecar"

eval "$(conda shell.bash hook)"

echo "Creating conda environment: ${CONDA_ENV}"
conda create -n "${CONDA_ENV}" python=3.10 -y 
conda activate "${CONDA_ENV}"

echo "Installing conda dependencies..."
conda install -q -y -c conda-forge ffmpeg notebook ipywidgets

echo "Installing python dependencies..."
pip install -q -r requirements.txt
conda develop "$(pwd)/library"

echo "Setting UDP datagram max size to 64K (enter your sudo password when prompted)"
sudo sysctl -w net.inet.udp.maxdgram=65535

echo
echo "===================================="
echo "RacerNeo Labs environment installed:"
echo "===================================="
echo "  To activate conda environment: condo activate ${CONDA_ENV}"
echo "  To run labs in Jupyter:        jupyter lab"
echo "  To run labs in Visual Studio:  code ."
echo "    (in Visual Studio, run with the '${CONDA_ENV}' Python kernel')"
echo