#!/bin/bash
#SBATCH --output=train_output-lossfunc.txt
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --partition=short
#SBATCH --mem=20G
#SBATCH --time=09:59:59
#SBATCH --gres=gpu:1
#SBATCH -C A100

module load cuda11.2/toolkit/11.2.2
module load cudnn8.1-cuda11.2/8.1.1.33 

python ~/path_to_test.py
