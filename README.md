# Replication Package of the Paper: "Sprint2Vec: a deep characterization of sprints in iterative software development"

This repository contains the code, data, models, and experimental results for the paper "Sprint2Vec: a deep characterization of sprints in iterative software development" submitted to IEEE Transactions on Software Engineering (TSE).

## 📝 Abstract

Iterative approaches, like Agile Scrum are commonly adopted to enhance the software development process. However, challenges such as schedule and budget overruns still persist in many software projects. Several approaches employ machine learning techniques, particularly classification, to facilitate decision-making in iterative software development. Existing approaches often concentrate on characterizing a sprint to predict solely productivity. We introduce Sprint2Vec, which leverages three aspects of sprint information -- sprint attributes, issue attributes, and the developers involved in a sprint, to comprehensively characterize it for predicting both productivity and quality outcomes of the sprints. Our approach combines traditional feature extraction techniques with automated deep learning-based unsupervised feature learning techniques. We utilize methods like Long Short-Term Memory (LSTM) to enhance our feature learning process. This enables us to learn features from unstructured data, such as textual descriptions of issues and sequences of developer activities. We conducted an evaluation of our approach on two regression tasks: predicting the deliverability (i.e., the amount of work delivered from a sprint) and quality of a sprint (i.e., the amount of delivered work that requires rework). The evaluation results on five well-known open-source projects (Apache, Atlassian, Jenkins, Spring, and Talendforge) demonstrate our approach's superior performance compared to baseline and alternative approaches.

## 📂 Directory Structure

<details>
<summary>Click to expand</summary>

```plaintext
.
├── Dataset
│   ├── existing
│   │   └── ...
│   ├── onlysprint
│   │   └── ...
│   ├── onlytabular
│   │   ├── productivity
│   │   │   └── ...
│   │   └── quality_impact
│   │       └── ...
│   ├── sprint2vec
│   │   ├── productivity
│   │   │   └── ...
│   │   └── quality_impact
│   │       └── ...
│   ├── sprint2vecnotext
│   │   ├── productivity
│   │   │   └── ...
│   │   └── quality_impact
│   │       └── ...
│   ├── sprintdev
│   │   ├── productivity
│   │   │   └── ...
│   │   └── quality_impact
│   │       └── ...
│   └── sprintissue
│       ├── productivity
│       │   └── ...
│       └── quality_impact
│           └── ...
├── Models
│   ├── DevModels
│   │   ├── apache
│   │   │   └── ...
│   │   ├── jenkins
│   │   │   └── ...
│   │   ├── jira
│   │   │   └── ...
│   │   ├── spring
│   │   │   └── ...
│   │   └── talendforge
│   │       └── ...
│   ├── Regressors
│   │   ├── apache
│   │   │   ├── productivity
│   │   │   │   └── ...
│   │   │   └── quality_impact
│   │   │       └── ...
│   │   ├── jenkins
│   │   │   ├── productivity
│   │   │   │   └── ...
│   │   │   └── quality_impact
│   │   │       └── ...
│   │   ├── jira
│   │   │   ├── productivity
│   │   │   │   └── ...
│   │   │   └── quality_impact
│   │   │       └── ...
│   │   ├── spring
│   │   │   ├── productivity
│   │   │   │   └── ...
│   │   │   └── quality_impact
│   │   │       └── ...
│   │   └── talendforge
│   │   │   ├── productivity
│   │   │   │   └── ...
│   │   │   └── quality_impact
│   │   │       └── ...
│   └── TextModels
│       ├── BERTOverflow
│       │   └── readme.txt
│       ├── BERTuncased
│       │   └── readme.txt
│       ├── BoW
│       │   ├── apache
│       │   │   └── ...
│       │   ├── jenkins
│       │   │   └── ...
│       │   ├── jira
│       │   │   └── ...
│       │   ├── spring
│       │   │   └── ...
│       │   └── talendforge
│       │       └── ...
│       ├── SO_W2V
│       │   └── readme.txt
│       ├── TFIDF
│       │   ├── apache
│       │   │   └── ...
│       │   ├── jenkins
│       │   │   └── ...
│       │   ├── jira
│       │   │   └── ...
│       │   ├── spring
│       │   │   └── ...
│       │   └── talendforge
│       │       └── ...
│       └── seBERT
│           └── readme.txt
├── Results
│   ├── Evaluation Results
│   │   ├── apache
│   │   │   └── ...
│   │   ├── jenkins
│   │   │   └── ...
│   │   ├── jira
│   │   │   └── ...
│   │   ├── spring
│   │   │   └── ...
│   │   └── talendforge
│   │       └── ...
│   ├── Raw Errors
│   │   ├── apache
│   │   │   └── ...
│   │   ├── jenkins
│   │   │   └── ...
│   │   ├── jira
│   │   │   └── ...
│   │   ├── spring
│   │   │   └── ...
│   │   └── talendforge
│   │       └── ...
│   ├── Predictions
│   │   ├── apache
│   │   │   └── ...
│   │   ├── jenkins
│   │   │   └── ...
│   │   ├── jira
│   │   │   └── ...
│   │   ├── spring
│   │   │   └── ...
│   │   └── talendforge
│   │       └── ...
│   └── Feature Analysis  
│       ├── shap_feat_imp_df
│       │   └── ...
│       ├── shap_group_feat_imp
│       │   └── ...
│       ├── shap_individual
│       │   └── ...
│       └── shap_values
│           └── ...
├── Scripts
│   ├── Data
│   │   ├── DataCollection
│   │   │   └── ...
│   │   ├── DataExtraction
│   │   │   ├── DeveloperFurtherInfo
│   │   │   │   └── ...
│   │   │   ├── IssueFurtherInfo
│   │   │   │   └── ...
│   │   │   ├── SprintFurtherInfo
│   │   │   │   └── ...
│   │   │   └── MainInfo
│   │   │       └── ...
│   │   └── Utility
│   │       └── ...
│   ├── Modeling
│   │   ├── Utility
│   │   │   └── ...
│   │   └── ...
│   ├── Feature Analysis  
│   │   └── ...
│   └── requirements.txt
├── Sprint2Vec_Config.xlsx
├── Sprint2Vec_Pipeline.png
└── README.md
```
</details>

## 📦 Requirements
This project is written in Python 🐍 and requires the version 3.7 or higher. 

## 📚 Contents
- **Dataset**: Contains datasets used in the study, divided into folders based on features utilized:
    - `existing`: Existing approach
    - `sprint2vec`: Our approach
    - `onlysprint`: ALT 1
    - `onlytabular`: ALT 2
    - `sprintissue`: ALT 3
    - `sprintdev`: ALT 4
    - `sprint2vecnotext`: ALT 5
    
    Each subfolder (except `existing` and `onlysprint`) contains:
    - `productivity`: Data for productivity regression task
    - `quality_impact`: Data for quality impact regression task

- **Models**: Contains trained models for different approaches across projects, organized into subfolders:
    - `DevModels`: Developer activity models
    - `TextModels`: Text models
    - `Regressors`: Regression models
    
    Dependency file:
    - `requirements.txt`

- **Results**: Contains four subfolders:
    - `Evaluation Results`: Raw evaluation results (MAE)
    - `Raw Errors`: Error files for raw and absolute errors during evaluation
    - `Predictions`: Raw prediction files during evaluation
    - `Feature Analysis`: Results from SHAP's feature analysis

- **Scripts**: Contains three subfolders:
    - `Data`: Scripts for data collection and extraction
    - `Modeling`: Scripts for data preprocessing, model training, and evaluation
    - `Feature Analysis`: Scripts for SHAP's feature analysis

Additional Files:
- `Sprint2Vec_Config.xlsx`: Best configuration of `sprint2vec` for each case of project and task
- `Sprint2Vec_Pipeline.png`: Pipeline Diagram of the sprint2vec training and predicting process

## 🚀 Getting Started
- **Create Virtual Environment and Install Required Packages:**

    It is recommended to use a virtual environment to manage dependencies. Follow the appropriate instructions below based on your environment:
    - Using `venv` (Python's built-in tool): To create a virtual environment, refer to the official [Python documentation](https://docs.python.org/3/library/venv.html).
    - Using Conda: If you're using Conda, follow the instructions provided in this [Conda guide](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html).

    After creating the virtual environment, activate it and install the required packages by running the following command:
    ```bash
    pip install -r Scripts/requirements.txt
    ```
> [!IMPORTANT]
> *Ensure that your virtual environment is activated before running the installation command to avoid conflicts with your system-wide packages.*

- **Setup JIRA APIs, SQL Database, and Workspace:**

    Before proceeding, make sure to set up the required steps (e.g., registering for the JIRA account and getting an access token, see more on the [Jira REST API](https://developer.atlassian.com/cloud/jira/platform/rest/v2/intro/) document) for JIRA APIs and a SQL database to suit your requirements. Additionally, ensure you have a suitable workspace configured for your project pipeline.

- **Data Collection and Extraction:**

    Customize the scripts within the `Data` folder to include your access token for the APIs, database credentials, and workspace specifications. These modifications are necessary to collect and extract data accurately and store it in the database. For example,
    ```python
    path = "<file_path>".format(folder, repo, issueKey)
    ```
    `<file_path>` should be replaced with your actual file path where the data will be stored.

    ```python
    repo = RepoConfig("apache", "issues.apache.org/jira", "<username>:<password>", "12310293")
    ```
    `<username>:<password>` should be replaced with your credentials (i.e., username and password)

    ```python
    db = DBConfig("<host>", "<port>", "<user>", "<password>", repo, "<data_folder>")
    ```
    `<host>`, `<port>`, `<user>`, `<password>`, and `<data_folder>` should be replaced with your database credentials and the path of data folder.

    The scripts are segregated into three subfolders:

    - `DataCollection`: Contains scripts for data collection. This includes 
        - [GetActivityStream.py](Scripts/Data/DataCollection/GetActivityStream.py) is used to collect the activity stream of developers.
        - [GetBoard.py](Scripts/Data/DataCollection/GetBoard.py) is used to collect the list of boards available in the specified project.
        - [GetBoardDetail.py](Scripts/Data/DataCollection/GetBoardDetail.py) is used to collect the attributes of the boards.
        - [GetRapidBoard.py](Scripts/Data/DataCollection/GetRapidBoard.py) is used to collect the list of boards available in the specified project.
        - [GetSprintIssue.py](Scripts/Data/DataCollection/GetSprintIssue.py) is used to collect the issues with comments, changelogs, and description in the specified sprint.
        - [GetTeammemberIssue.py](Scripts/Data/DataCollection/GetTeammemberIssue.py) is used to collect the issues assigned to the specified team member.
    - `DataExtraction`: Contains scripts for data extraction. There are four subfolders:
        - [`DeveloperFurtherInfo`](Scripts/Data/DataExtraction/DeveloperFurtherInfo): Contains scripts for extracting further information about developers and store it in the database.
        - [`IssueFurtherInfo`](Scripts/Data/DataExtraction/IssueFurtherInfo): Contains scripts for extracting further information about issues and store it in the database.
        - [`SprintFurtherInfo`](Scripts/Data/DataExtraction/SprintFurtherInfo): Contains scripts for extracting further information about sprints and store it in the database.
        - [`MainInfo`](Scripts/Data/DataExtraction/MainInfo): Contains scripts for extracting the main information about developers, issues, and sprints, including the target variables and store it in the database.

    - `Utility`: Contains utility scripts for database, jira api, workspace configurations, and helpful functions.

    Once customized, execute the scripts to initiate the data collection and extraction processes. For example, you can run the following command to collect the list of boards available in the specified project:
    ```bash
    python DataCollection/GetRapidBoard.py
    ```
    and the following command to extract the attributes of the boards:
    ```bash
    python DataExtraction/MainInfo/ExtractBoardAttribute.py
    ```
> [!WARNING]
> *The data collection and extraction process may take a significant amount of time, depending on the size of the project.*

- **Model Training and Evaluation:**

    This process consists of three main components: data preprocessing, feature construction, and modeling. Below are the key scripts involved:

    - **Data Preprocessing**: Scripts like `LoadData.py`, `PreprocessData.py`, and `SplitData.py` are utilized.
        - [LoadData.py](Scripts/Modeling/LoadData.py): Loads the data from the database. Execute the following command:

            ```bash
            python LoadData.py <project_name>
            ```
            For example, to load the data for the Apache project, run the following command:
            ```bash
            python LoadData.py apache
            ```

        - [SplitData.py](Scripts/Modeling/SplitData.py): Split the loaded data into train/validation/test sets. Execute the following command:

            ```bash
            python SplitData.py <project_name>
            ```
            For example, to split the data for the Apache project, run the following command:
            ```bash
            python SplitData.py apache
            ```

        - [PreprocessData.py](Scripts/Modeling/PreprocessData.py): Preprocess the data for modeling. Execute the following command:

            ```bash
            python PreprocessData.py <project_name>
            ```
            For example, to preprocess the data for the Apache project, run the following command:
            ```bash
            python PreprocessData.py apache
            ```

        > ℹ️ Note: 
        >
        > *Some scripts may require customization based on your database and workspace configurations. For example,*
        > ```python
        > connection = pymysql.connect(
        >     host="<host_name>",
        >     port="<port>",
        >     user="<username>",
        >     passwd="<password>",
        >     database="<repo>",
        >     ...
        > )
        > ```
        > *`<host_name>`, `<port>`, `<username>`, `<password>`, and `<repo>` should be replaced with the database configurations and credentials.*

    - **Feature Construction**: For textual feature extraction, `bow.py`, `tfidf.py`, `sow2v.py`, and `bert.py` are used.

        - [bow.py](Scripts/Modeling/bow.py) is for BoW.
        - [tfidf.py](Scripts/Modeling/tfidf.py) is for TF-IDF.
        - [sow2v.py](Scripts/Modeling/sow2v.py) is for SO_Word2Vec.
        - [bert.py](Scripts/Modeling/bert.py) is for BERT<sub>BASE_UNCASED</sub>, BERTOverflow, and seBERT.

        For instance, you can extract feature for textual description using BERTOverflow on Apache by:

        ```bash
        python bert.py apache bertoverflow
        ```

        However, you can use [run_text.py](Scripts/Modeling/run_text.py) to execute all of them in once.

        Moreover, scripts like `Prep*.py` are used to construct features for modeling, such as [PrepSprint2vec.py](Scripts/Modeling/PrepSprint2vec.py) for our approach (i.e., Sprint2Vec), [PrepExisting.py](Scripts/Modeling/PrepExisting.py) for the existing approach, [PrepOnlySprint.py](Scripts/Modeling/PrepOnlySprint.py) for ALT 1, [PrepOnlyTabular.py](Scripts/Modeling/PrepOnlyTabular.py) for ALT 2, [PrepSprintIssue.py](Scripts/Modeling/PrepSprintIssue.py) for ALT 3, [PrepSprintDev.py](Scripts/Modeling/PrepSprintDev.py) for ALT 4, and [PrepSprint2vecNoText.py](Scripts/Modeling/PrepSprint2vecNoText.py) for ALT 5. You can execute the scripts by:

        ```bash
        python Prep*.py <following_arguments>
        ```
        you can run the following command to construct features for Sprint2Vec that requires the project name, the text type, the developer activity type, the RNN type for the activity model, the activation dimension for the activity model, and the pooling type as arguments:

        ```bash
        python PrepSprint2vec.py apache bow full lstm 16 mean
        ```
        This means that the script will construct features for the Apache project using the Bag-of-Words (BoW) text type, full developer activity type, LSTM RNN type for the activity model, 16 activation dimensions for the activity model, and mean pooling type.

        > ℹ️ Note:
        >
        > *The arguments may vary based on the script and the approach.*

    - **Modeling & Evaluation**: [TrainActRNN.py](Scripts/Modeling/TrainActRNN.py) is used for training and evaluating the RNN-based developer activity models. You can use the following command to run:

        ```bash
        python TrainActRNN.py <project_name> <rnn_type> <output_dim>
        ```
    
        For example:

        ```bash
        python TrainActRNN.py apache lstm 32
        ```

        This means that LSTM with the output dimension of 32 is trained for Apache. However, you can use [run_trainact.py](Scripts/Modeling/run_trainact.py) to execute all of configurations in once.
        
        For training and evaluating downstream regressors, [ExperimentWithAk.py](Scripts/Modeling/ExperimentWithAk.py) is used. You can use the following command to execute:

        ```bash
        python ExperimentWithAk.py <project_name> <task> <approach_name>
        ```
    
        For example, you train and evaluate a regressor using sprint2vec with tfidf and mean pooling for the productivity prediction on Apache by:

        ```bash
        python ExperimentWithAk.py apache productivity sprint2vec_tfidf_mean
        ```

        For more detail of all the approaches, see [run_experimentwithak.py](Scripts/Modeling/run_experimentwithak.py)

        In the matter of baselines (in RQ1), [baseline.py](Scripts/Modeling/baseline.py) is used. For example, you can execute the following command to develop a linear regression model for the productivity task on the Apache project:

        ```bash
        python baseline.py apache productivity linear
        ```
> [!TIP]
> *You can execute the scripts in the Modeling folder to preprocess the data, train the models, and evaluate them. This is primarily done by running the `run_*.py` files. For example, you can run the following command to load, preprocess, and split the data:*
> ```bash
> python Modeling/run_data.py
> ```

- **Feature Analysis with SHAP**

    To understand how features influence predictions, we applied SHAP (SHapley Additive exPlanations). SHAP's strength provides interpretable insights into each feature's impact on the model's predictions. This part contain 3 scripts which are:

    - [run_shap.py](Scripts/Feature%20Analysis/run_shap.py) is used for estimating the SHAP values for each feature
    - [run_shap_feat_imp.py](Scripts/Feature%20Analysis/run_shap_feat_imp.py) is used for constructing the list most important features with their normalized SHAP values and direction of correlation.
    - [run_shap_group_feat_imp.py](Scripts/Feature%20Analysis/run_shap_group_feat_imp.py) is used for averaging SHAP values for 5 distinct groups of features.

    You can run this kind of script by:
    ```bash
    python Feature_Analysis/<script>
    ```

    > ℹ️ Note: 
    >
    > *Scripts require customization based on your workspace configurations. For example,*
    > ```python
    >    best_model = load_model("<best_model_path>".format(repo, task, best_model_name), custom_objects=ak.CUSTOM_OBJECTS)
    >    train_df = pd.read_csv("<train_data>".format(task, repo, "_".join(best_model_name.split("_")[:-1])))
    > ```
    > *`<best_model_path>` and `<train_data>` should be replaced with the path of the best model and the path of training data.*


## 👥 Authors
- Morakot Choetkiertikul
- Peerachai Banyongrakkul
- Chaiyong Ragkhitwetsagul
- Suppawong Tuarob
- Hoa Khanh Dam
- Thanwadee Sunetnanta

## 🙏 Acknowledgment
This work was financially supported by the Office of the Permanent Secretary, Ministry of Higher Education, Science, Research and Innovation (Grant No. RGNS 64-164).

## 📖 Citation
If you use the concept, code, data or models in this repository, please cite the following paper:
```
@article{10.1109/TSE.2024.3509016,
    author = {Choetkiertikul, Morakot and Banyongrakkul, Peerachai and Ragkhitwetsagul, Chaiyong and Tuarob, Suppawong and Dam, Hoa Khanh and Sunetnanta, Thanwadee},
    title = {Sprint2Vec: A Deep Characterization of Sprints in Iterative Software Development},
    year = {2025},
    issue_date = {Jan. 2025},
    publisher = {IEEE Press},
    volume = {51},
    number = {1},
    issn = {0098-5589},
    url = {https://doi.org/10.1109/TSE.2024.3509016},
    doi = {10.1109/TSE.2024.3509016},
    journal = {IEEE Trans. Softw. Eng.},
    month = jan,
    pages = {220–242},
    numpages = {23}
}
```
