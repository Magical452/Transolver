# Reproducible Inference on AI Makerspace for Transolver

## Deacription
- Task: predict surface pressure and surrounding velocity for cars, plus drag coefficient.
- Model: Transolver. No pretrained weights were released, so the model was trained here.
- My work: `Car-Design-ShapeNetCar/`, `jobs/`, `logs/`, this README.

## 2. Provenance
- Source repo: https://github.com/thuml/Transolver
- Upstream commit: <PASTE git rev-parse HEAD>
- Dataset: http://www.nobuyuki-umetani.com/publication/mlcfd_data.zip (2,029,047,879 bytes)
  (Umetani and Bickel, SIGGRAPH 2018)
- Weights: none released by the authors; trained by me (see section 5).
- Paper: https://arxiv.org/abs/2402.02366

## 3. Environment
- Cluster: PACE ICE, login node <hostname>
- Modules: <module list>
- Python: <version>; conda env created with: <command>
- Packages: see `requirements-frozen.txt` (from `pip freeze`)
- Setup commands: <exact commands>

## 4. Data preparation
<download, unzip, data_dir and save_dir paths, preprocessing command>

## 5. Training
- Script: `jobs/train.sbatch`
- Resources: <GPU type, CPUs, memory, wall time>
- Key arguments: <nb_epochs, lr, batch_size>
- Log: `logs/<file>`

## 6. Evaluation (inference)
- Script: `jobs/eval.sbatch`
- Log: `logs/<file>`
- Outputs: <metrics files, plots>

## 7. Validation
<my metrics vs. paper's reported numbers, and an explanation of any gap>

## 8. Troubleshooting log
- nano segfault inside conda env: <what fixed it>
- `--nb_epochs` was `type=float` in main_evaluation.py, changed to `type=int`
  so the checkpoint path matches training.
- <other issues>

## 9. Repository layout
<short tree>

## Credits
Code from thuml/Transolver (see LICENSE); this repo adds job scripts, logs, and documentation.
Used Claude for README format and troubleshooting. Gemini for troubleshooting as well.
