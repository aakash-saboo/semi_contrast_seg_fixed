#!/bin/bash

# source activate py37
# dataset=mmwhs
dataset=Hippocampus
fold=1
method=mix
model_path=./save/SupCon/Hippocampus_models/SupCon_Hippocampus_adam_fold_3_lr_0.0001_decay_0.0001_bsz_4_temp_0.1_train_1.0_stride_stride_4_pretrained/ckpt.pth

# notice: when load saved models, remember to check whether true model is loaded
train_sample=0.2
python run_seg_pipeline.py  --dataset ${dataset} --train_sample ${train_sample} --fold ${fold} --batch_size 8 \
        --load_saved_model --saved_model_path ${model_path} \