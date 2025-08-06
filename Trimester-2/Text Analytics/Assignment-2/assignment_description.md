**Repeat exercise 11 of Part 2 (text classification with mostly linear classifiers), now using**

**an MLP classifier implemented (by you) in Keras/TensorFlow or PyTorch.3 You may use**

**different features in the MLP classifier than the ones you used in exercise 11 of Part 2. Tune**

**the hyper-parameters (e.g., number of hidden layers, dropout probability) on the development**

**subset of your dataset. Monitor the performance of the MLP on the development subset**

**during training to decide how many epochs to use. Include experimental results of a baseline**

**majority classifier, as well as experimental results of your best classifier from exercise 11 of**

**Part 2, now treated as a second baseline. Include in your report:**



**• Curves showing the loss on training and development data as a function of epochs**

**(slide 49).**

**• Precision, recall, F1, precision-recall AUC scores, for each class and classifier,**

**separately for the training, development, and test subsets, as in exercise 11 of Part 2.**

**• Macro-averaged precision, recall, F1, precision-recall AUC scores (averaging the**

**corresponding scores of the previous bullet over the classes), for each classifier,**

**separately for the training, development, and test subsets, as in exercise 11 of Part 2.**

**• A short description of the methods and datasets you used, including statistics about**

**the datasets (e.g., average document length, number of training/dev/test documents,**

**vocabulary size) and a description of the preprocessing steps that you performed.**



**You may optionally wish to try ensembles. One possibility is to use k separate MLP**

**classifiers, corresponding to your k best checkpoints (k best epochs in terms of development**

**loss), and aggregate their decisions by majority voting. Another possibility is to use temporal**

**averaging, i.e., use a single MLP classifier, whose weights are the average of the weights of**

**the k best checkpoints.**

