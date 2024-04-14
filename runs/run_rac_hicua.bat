@echo off
python main.py ^
    --MODEL_DIR ".\models" ^
    --DATA_DIR ".\data" ^
    --MIMIC_3_DIR ".\data\mimic3" ^
    --data_path ".\data\mimic3\train_full.csv" ^
    --embed_file ".\data\mimic3\processed_full_300.embed" ^
    --vocab ".\data\mimic3\vocab_rac.csv" ^
    --Y full ^
    --model RACReader ^
    --batch_size 16 ^
    --lr 8e-5 ^
    --criterion prec_at_8 ^
    --gpu "0" ^
    --tune_wordemb ^
    --MAX_LENGTH 4096 ^
    --num_workers 8 ^
    --filter_size 9 ^
    --n_epochs "2,3,5,7,500" ^
    --decoder HierarchicalHyperbolic ^
    --dropout 0.1

pause