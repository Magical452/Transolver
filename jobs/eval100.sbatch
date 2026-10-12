#!/bin/bash
#SBATCH -J eval100
#SBATCH -A coc
#SBATCH -q coc-ice
#SBATCH -p ice-gpu
#SBATCH -N1 --ntasks-per-node=1 --cpus-per-task=8
#SBATCH --gres=gpu:A100:1
#SBATCH --mem=32G
#SBATCH -t 01:00:00
#SBATCH -o logs/eval100-%j.out

cd $SLURM_SUBMIT_DIR
module load anaconda3
eval "$(conda shell.bash hook)"
conda activate transolver
which python

hostname
nvidia-smi
python -c "import torch; print('cuda available:', torch.cuda.is_available())"

cd Car-Design-ShapeNetCar
export MLCFD_DATA_DIR=/home/hice1/mli863/scratch/Transolver/data/mlcfd_data/training_data
export MLCFD_SAVE_DIR=/home/hice1/mli863/scratch/Transolver/data/preprocessed_data
python -u main_evaluation.py \
  --cfd_model=Transolver \
  --data_dir /home/hice1/mli863/scratch/Transolver/data/mlcfd_data/training_data \
  --save_dir /home/hice1/mli863/scratch/Transolver/data/preprocessed_data \
  --nb_epochs 100
