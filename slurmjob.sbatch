#!/bin/bash
#SBATCH -N 1
#SBATCH --gres=gpu:1
#SBATCH -t 0-00:30
#SBATCH -p gpu_test
#SBATCH --mem=4G
#SBATCH -o main7.out
#SBATCH -e main7errors.err
module load python/3.8.5-fasrc01
module load cuda/11.1.0-fasrc01
source activate pt1.8_cuda111
srun --gres=gpu:1 python main.py 
