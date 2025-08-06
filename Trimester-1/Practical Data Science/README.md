# Practical Data Science

This folder contains my coursework and assignments for the "Practical Data Science" module, part of the MSc in Artificial Intelligence & Data Science (Trimester 1). The course emphasized hands-on experience with real-world data science tools and workflows using Python.

## 📖 Course Overview

This course covered a wide range of **Data Science practices**, focusing on practical implementations using Python and its ecosystem of libraries. It combined technical depth with applied problem-solving, aiming to equip students with a robust and versatile toolkit for tackling data-intensive tasks.

The course covered topics such as:
- Data collection, crawling, and processing from various online sources  
- Scientific and mathematical computing using **NumPy** and **SciPy**  
- Data manipulation and analysis using **Pandas**  
- Building and evaluating machine learning models with **Scikit-learn**  
- Natural Language Processing techniques for handling text data  
- Data visualization to communicate insights effectively  
- Structuring and solving real-world problems from algorithmic design to implementation

By the end of the course, I gained practical experience in:
- Handling structured and unstructured data  
- Implementing data pipelines from ingestion to analysis  
- Applying ML and NLP models in end-to-end solutions  
- Working with large datasets using appropriate Python tools  
- Writing clean, modular, and reproducible code for data science tasks

The coursework included **three programming assignments**, each designed to apply different parts of the data science lifecycle. These assignments are documented below.

## 📂 Assignments

### 📝 Assignment 1 – Emotion Annotation & Cross-Lingual Text Analysis

- **Summary:**  
  This two-part assignment focused on emotion annotation using LLMs and statistical analysis of cross-lingual text data. In **Part A**, I worked with human-    annotated emotional labels, computed inter-annotator agreement, and compared them against LLM-generated annotations. In **Part B**, I analyzed LLM-           translated English proverbs, conducted linguistic preprocessing, and performed comparative analysis with their Greek originals.

- **Focus Areas:**  
  **Part A – Emotion Annotation & LLM Evaluation**  
  - Computed emotion probabilities per annotator and visualized them  
  - Measured inter-annotator agreement using **Cohen's Kappa** and **percentage agreement**  
  - Derived ground truth labels via **majority vote**  
  - Prompted LLMs to annotate text, both neutrally and from simulated demographic perspectives  
  - Analyzed differences in annotations and bias between agents and human annotators  

  **Part B – Text Translation Analysis & Visualization**  
  - Detected and removed redundant text in LLM-translated English proverbs using regex  
  - Compared word and character statistics across Greek and English  
  - Identified and visualized frequent English words by **geographic location**  
  - Mapped many-to-one Greek-to-English proverb translations using network-style visualization  

- **Deliverables:**  
  - A Jupyter notebook with all code, outputs, and visualizations  
  - Emotion heatmaps, agreement tables, and geographical word frequency maps  
  - A discussion on LLM behavior, biases, and annotation variance

### 📝 Assignment 2 – Food Hazard Detection Challenge (SemEval 2025)

- **Summary:**  
  This assignment involved participating in the **Food Hazard Detection Challenge** (SemEval 2025), which focuses on identifying food safety hazards in both    short and long text descriptions. The challenge required building and evaluating machine learning models to classify text content effectively based on risk   factors.

- **Focus Areas:**  
  - Explored and preprocessed both **short texts (titles)** and **long texts (descriptions)**  
  - Developed benchmark models using classical ML algorithms (e.g. logistic regression, XGBoost)  
  - Fine-tuned transformer-based models for long text classification  
  - Compared performance metrics across different models and text types  
  - Submitted predictions and reported score and ranking from the official leaderboard  

- **Deliverables:**  
  - A complete implementation hosted in a separate GitHub repository  
  - README with detailed instructions, methodology, and evaluation results

  🔗 **Project Repository:** [Food Hazard Detection Challenge – GitHub](https://github.com/DVougioukos/semeval-food-hazard-detection-challenge)
  📊 **Challenge Info:** [Official SemEval 2025 Website](https://food-hazard-detection-semeval-2025.github.io/)

### 📝 Assignment 3 – Image Annotation & Data Mining with "GSV Cities" Dataset

- **Summary:**  
  This three-part assignment combined image annotation, unsupervised learning, and cross-student analysis using the [**GSV Cities**](https://www.kaggle.com/datasets/amaralibey/gsv-cities) dataset. It was designed to test the practical application of all major course concepts, from      data cleaning and exploratory analysis to clustering and interpretation of real-world visual data.

- **Focus Areas:**  
  **Part 1 – Image Annotation:**  
  - Manually annotated images showing pedestrian obstructions based on personal judgment  
  - Selected appropriate categories per image and recorded annotations without legal bias  
  - Contributed to a collaborative dataset for inter-annotator agreement analysis  

  **Part 2 – Data Mining with GSV Cities:**  
  - Acquired and filtered large-scale image data using the Kaggle API  
  - Performed preprocessing, including random city-based sampling and metadata structuring  
  - Conducted exploratory data analysis (EDA) to explore distributional trends  
  - Applied **KMeans clustering** to group image content and interpret cluster semantics  
  - Compared cities based on image cluster distributions

  **Part 3 – Final Application & Analysis:**  
  - Used annotations from all students to compute **inter-annotator agreement**  
  - Applied trained clustering model to annotated images  
  - Identified the three most similar cities to Athens using unsupervised results  
  - Compared cluster-based predictions with human annotations to uncover insights  

- **Deliverables:**  
  - A single Jupyter notebook combining all steps, code, visualizations, and explanations  
  - Manual annotations, agreement heatmaps, cluster descriptions, and final comparisons

## 📌 Wrapping Up

This course significantly enhanced my ability to apply data science techniques in practical, real-world scenarios. From working with structured and unstructured text to analyzing large-scale image data, i gained hands-on experience across the full data science pipeline, including data collection, cleaning, exploration, machine learning, and evaluation.

Through the assignments, i strengthened my programming skills in Python, developed intuition for model selection and evaluation, and learned to design workflows that are both efficient and reproducible. The collaborative and applied nature of the tasks also helped me better understand the challenges of real-world data analysis, such as annotator disagreement, class imbalance, and cross-domain variability.

