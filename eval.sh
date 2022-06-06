
checkpoints="ckpts/yolox_s.pth"
#checkpoints="YOLOX_outputs/yolox_s/epoch_12_ckpt.pth"

# batch testing for fast evaluation
python -m yolox.tools.eval -n  yolox-s -c $checkpoints -b 16 -d 1 --conf 0.001 [--fp16] [--fuse]

# to reproduce speed test, we use the following command:
python -m yolox.tools.eval -n  yolox-s -c $checkpoints -b 1 -d 1 --conf 0.001 --fp16 --fuse