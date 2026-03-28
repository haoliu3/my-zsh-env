export USE_CUDA=1
export USE_CUDNN=1
export MAX_JOBS=8  # 并行编译线程数（避免 OOM）
export USE_NINJA=1      # 加快构建
python setup.py develop
