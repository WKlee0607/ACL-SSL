#!/usr/bin/bash

#SBATCH -J train_ACL
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=8
#SBATCH --mem-per-gpu=32G
#SBATCH -p batch_ugrad
#SBATCH -w aurora-g7
#SBATCH -t 1-0
#SBATCH -o logs/slurm-%A.out

pwd
which python
fovert
python Test_PTModels.py --model_name ACL_ViT16 --exp_name aclifa_1gpu --vggss_path /data/datasets/ACL_Datasets/VGGSound/ --flickr_path /data/datasets/ACL_Datasets/Flikcr/ --avs_path /data/datasets/ACL_Datasets/AVS1/ --save_path /data/fovert/repos/repos/ACL-SSL/save_folder/ --epochs None
exit 0