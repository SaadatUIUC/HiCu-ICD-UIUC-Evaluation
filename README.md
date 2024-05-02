# HiCu-ICD
This repo contains code for our MLHC 2022 paper [HiCu: Leveraging Hierarchy for Curriculum Learning in Automated ICD Coding](https://arxiv.org/abs/2208.02301).

### Setting up the Environment Locally:

For best experience setting up the project, I recommend Anaconda, which can be downloaded from the following link: [Anaconda](https://www.anaconda.com/
)


### Requirements

Use the provided `environment.yml` to setup your local environment.

Run `conda env create -f environment.yml` to install the required libraries
Run `conda activate hicu_env`
Run `python3` and run `import nltk` and `nltk.download('punkt')` for tokenization 

### Data Preprocessing
-----
We use MIMIC-III for model training and evaluation. We use the same data preprocessing code as [MultiResCNN](https://github.com/foxlf823/Multi-Filter-Residual-Convolutional-Neural-Network). To set up the dataset, place the MIMIC-III files into `/data` as shown below:
```
data
|   D_ICD_DIAGNOSES.csv
|   D_ICD_PROCEDURES.csv
└───mimic3/
|   |   NOTEEVENTS.csv
|   |   DIAGNOSES_ICD.csv
|   |   PROCEDURES_ICD.csv
|   |   train_full_hadm_ids.csv
|   |   train_50_hadm_ids.csv
|   |   dev_full_hadm_ids.csv
|   |   dev_50_hadm_ids.csv
|   |   test_full_hadm_ids.csv
|   |   test_50_hadm_ids.csv
```
The `*_hadm_ids.csv` files can be found [here](https://github.com/jamesmullenbach/caml-mimic/tree/master/mimicdata/mimic3).

After setting up the files, run the following command to preprocess the data:
```sh
python preprocess_mimic3.py
```

### Training
-----
1. See files under `/runs` for training configs for MultiResCNN and RAC models.

For example: 

While in the root directory of the project and having activated the `hicu_env`.
```
runs\run_multirescnn_hicua.bat
```
2. For LAAT (Bi-LSTM) models, switch to `LAAT` branch and use the training configs in the root folder.

Upon successful running of the models, you should be able to relevant files in the respective model file, e.g. `.pth` files in `RACReader_HierarchicalHyperbolic_Apr_11_11_04_54`

Acknowledgement
-----
A large portion of the code in this repository is borrowed from [foxlf823/Multi-Filter-Residual-Convolutional-Neural-Network
](https://github.com/foxlf823/Multi-Filter-Residual-Convolutional-Neural-Network). Thanks to their great work.
