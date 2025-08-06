# Text Analytics

This folder contains my coursework and assignments for the "Text Analytics" module, part of the MSc in Artificial Intelligence & Data Science (Trimester 2). The course focused on modern techniques for extracting, modeling, and interpreting information from natural language using both traditional and deep learning-based NLP methods.

## 📖 Course Overview

This course introduced key **algorithms and architectures for Natural Language Processing (NLP)**, emphasizing their application in real-world text analytics tasks. It explored both classical statistical techniques and advanced neural models, ranging from n-gram language modeling to transformers and large language models (LLMs).

The course covered topics such as:
- N-gram models, entropy, perplexity, and spelling correction  
- Text classification using linear models and TF-IDF representations  
- Deep learning for NLP with **MLPs**, **RNNs**, and **CNNs**  
- Transformer-based architectures including **BERT**, **T5**, and **GPT**  
- Prompting and fine-tuning **Large Language Models (LLMs)**  
- Applications in **sentiment analysis**, **NER**, **machine translation**, and **speech/dialog systems**

By the end of the course, I gained practical experience in:
- Implementing NLP models across various architectures  
- Preprocessing and encoding natural language text for downstream tasks  
- Fine-tuning and prompting LLMs for text understanding and generation  
- Evaluating models with task-appropriate metrics and performance diagnostics  
- Understanding the role of text analytics in enterprise and societal contexts  

The coursework included **five programming assignments**, each targeting different components of modern NLP workflows. These assignments are documented below.

## 📂 Assignments

### 📝 Assignment 1 – N-gram Language Modeling & Context-Aware Spelling Correction

- **Summary:**  
  This assignment involved building **bigram** and **trigram language models** with Laplace smoothing, trained on an NLTK-based corpus. Models were evaluated using **cross-entropy** and **perplexity** metrics and used to generate **autocomplete text**.

- **Focus Areas:**  
  - Built n-gram models with unknown token handling  
  - Implemented sentence **completion** based on most probable next word  
  - Developed a **context-aware spelling corrector** using beam search and Levenshtein distance  
  - Created a synthetic noisy dataset to evaluate correction performance  
  - Reported **WER** and **CER** to assess model accuracy

- **Deliverables:**  
  - Language model code (bigram, trigram) with evaluation metrics  
  - Sentence generation examples for both models  
  - Spelling correction results and performance evaluation

### 📝 Assignment 2 – Deep Learning for Text Classification with MLP

- **Summary:**  
  This assignment extended the traditional text classification pipeline by introducing a **Multi-Layer Perceptron (MLP)** model, implemented in **PyTorch**, to classify short texts. The goal was to surpass the performance of linear classifiers from a previous exercise by leveraging non-linear architectures. We explored different hyperparameter configurations and monitored model performance using common classification metrics and learning curves.

- **Focus Areas:**
  
  **MLP Model Design & Training**  
  - Implemented a customizable **PyTorch-based MLP** for multi-class classification  
  - Tuned **number of layers**, **hidden dimensions**, **dropout rate**, and **epochs**  
  - Used **TF-IDF** vectorized inputs with preprocessed text (tokenization, stopword removal, lowercasing)  
  - Optimized using **Adam**, with cross-entropy loss and early stopping based on dev loss  
  - Visualized **training and dev loss curves** to choose best checkpoints  

  **Evaluation & Comparison with Baselines**  
  - Compared against a **majority baseline** and the **best linear model** from previous work  
  - Reported **precision, recall, F1, and PR-AUC**, both **per class** and **macro-averaged**  
  - Evaluated performance on **train**, **dev**, and **test** subsets

- **Deliverables:**  
  - Python script implementing MLP model and training pipeline  
  - Plots of loss curves across epochs for train/dev sets  
  - Metric tables for all classifiers and subsets (majority, linear, MLP)  
  - Dataset statistics and preprocessing summary (e.g., doc lengths, vocab size, splits)  
  - Concise report describing methods, experiments, and conclusions

### 📝 Assignment 3 – Text Classification with RNN and Self-Attention

- **Summary:**  
  This assignment built upon the previous MLP-based classifier by implementing a **bi-directional stacked RNN** with **GRU/LSTM cells** and a **self-attention mechanism**, using **PyTorch**. The model aimed to capture contextual dependencies in text sequences for improved classification accuracy.

- **Focus Areas:**
  
  **RNN + Attention Architecture**  
  - Developed a deep **bi-directional RNN** with optional **character-level embedding** layer  
  - Implemented **self-attention** to weigh token importance for classification  
  - Tuned key hyperparameters: number of layers, hidden sizes, dropout, attention architecture  
  - Trained using preprocessed text and pre-trained word embeddings  

  **Evaluation & Baselines**  
  - Benchmarked against a **majority baseline**, a **probabilistic model**, and the **MLP classifier**  
  - Tracked **training and dev loss curves** over epochs  
  - Reported **per-class and macro-averaged precision, recall, F1, and PR-AUC** on all data splits
    
- **Deliverables:**  
  - PyTorch implementation of the attention-based RNN classifier  
  - Loss curve visualizations  
  - Evaluation metrics compared across all models  
  - Dataset summary and preprocessing details  
  - Report describing methods, results, and key findings

### 📝 Assignment 4 – Text Classification with CNNs and Residual Connections

- **Summary:**  
  This assignment extended previous experiments by implementing a **stacked CNN** model with **n-gram filters**, **residual connections**, and **global max pooling**, using **PyTorch**. The goal was to explore convolutional architectures for text classification and compare them with prior RNN and MLP approaches.

- **Focus Areas:**
  
  **CNN-based Text Architecture**  
  - Designed a **multi-layer CNN** with varying **n-gram filters (n = 2, 3, 4)**  
  - Integrated **residual connections** and **global max pooling**  
  - Tuned hyperparameters such as number of layers and filter sizes 

  **Evaluation & Baselines**  
  - Compared against **majority baseline**, **probabilistic model**, **MLP**, and **RNN** classifiers  
  - Visualized **training and dev loss curves**  
  - Reported **class-wise and macro-averaged** precision, recall, F1, and PR-AUC scores  

- **Deliverables:**  
  - CNN classifier implemented in PyTorch  
  - Training and validation loss plots  
  - Evaluation results across all models  
  - Dataset statistics and preprocessing steps  
  - Summary report with methodology and key findings
 
### 📝 Assignment 5 – Sentiment Classification with Transformers (BERT)

- **Summary:**  
  The final assignment focused on **fine-tuning a pre-trained BERT model** for sentiment classification, building on earlier experiments with traditional and deep learning classifiers. Implemented using **Hugging Face Transformers**, the task explored modern **transformer-based architectures** for text understanding.

- **Focus Areas:**
  
  **Transformer Fine-tuning**  
  - Fine-tuned **BERT** on a sentiment dataset, with task-specific layers on top  
  - Tuned hyperparameters including **frozen encoder layers** and **learning rate**  
  - Addressed BERT’s max sequence length constraint (e.g., truncation or Longformer)  

  **Evaluation & Baselines**  
  - Compared performance with prior **majority**, **probabilistic**, **MLP**, **RNN**, and **CNN** classifiers  
  - Reported **macro-averaged** and **class-wise** metrics (precision, recall, F1, PR-AUC)  
  - Tracked **training dynamics** using loss curves  

- **Deliverables:**  
  - BERT-based classifier with tuned hyperparameters  
  - Training and validation performance plots  
  - Full evaluation against all baselines  
  - Dataset preprocessing summary

## 📌 Wrapping Up

This course deepened my understanding of modern NLP techniques and neural architectures for text classification. Through a series of structured assignments, i explored traditional classifiers, MLPs, RNNs with attention, CNNs, and transformer-based models like BERT.

By progressively building and evaluating increasingly sophisticated models, i developed practical skills in deep learning, model tuning, and performance evaluation. These hands-on experiences strengthened my ability to design, implement, and benchmark end-to-end NLP pipelines across diverse neural network architectures.
