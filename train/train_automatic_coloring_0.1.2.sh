accelerate launch --mixed_precision=fp16 --multi_gpu train/train_sd_reference_only_automatic_coloring.py \
    --pretrained_model_name_or_path='/data/aihao/workspace/DeepLearningContent/models/sd_reference_only/automatic_coloring_0.1.1' \
    --dataset_name='/data/aihao/workspace/DeepLearningContent/datasets/characters' \
    --dataset_config_name='similar_pairs' \
    --train_data_dir='/data/aihao/workspace/DeepLearningContent/datasets/characters' \
    --load_dataset_num_proc=48 \
    --dataloader_num_workers=12 \
    --output_dir="/data/aihao/workspace/DeepLearningContent/models/sd_reference_only/automatic_coloring_0.1.2" \
    --tracker_project_name='automatic_coloring' \
    --report_to="tensorboard" \
    --train_batch_size=11 \
    --max_train_steps=850000 \
    --learning_rate=2e-6 \
    --lr_scheduler="constant_with_warmup" \
    --lr_warmup_steps=10000 \
    --checkpointing_steps=1000 \
    --validation_steps=1000 \
    --validation_prompt    "validation_images/1/1_capture.png" "validation_images/2/1_capture.png" "validation_images/3/1_capture.png" "validation_images/4/1_capture.png"  "validation_images/6/1_capture.png" "validation_images/7/1_capture.png"\
    --validation_blueprint "validation_images/1/2_line.png"    "validation_images/2/2_line.png"    "validation_images/3/2_line.png"    "validation_images/4/2_line.png"     "validation_images/6/2_line.png"    "validation_images/7/2_line.png"\
    --use_8bit_adam \
    --enable_xformers_memory_efficient_attention \
    --seed 2221101 \
    --mixed_precision=fp16 \
    --train_image_encoder \
    --resolution=512 \
    --resume_from_checkpoint='latest'
