**Repeat Exercise 1 of Part 4 (NLP with RNNs), now using a stacked CNN with n-gram**

**filters (e.g., 𝑛 = 2, 3, 4), residual connections, and global max-pooling at the top layer (slide**

**42), all implemented (by you) in Keras/TensorFlow or PyTorch. Tune the hyper-parameters**

**(e.g., values of 𝑛, number of stacked convolutional layers) on the development subset of your**

**dataset. Monitor the performance of your models on the development subset during training**

**to decide how many epochs to use. You may optionally add an extra CNN layer to produce**

**word embeddings from characters (slide 44), concatenating each resulting character-based**

**word embedding with the corresponding pre-trained word embedding (e.g., obtained with**

**Word2Vec). Include experimental results of a baseline majority classifier, as well as**

**experimental results of your best classifiers from exercise 15 of Part 2, exercise 9 of Part 3,**

**and exercise 1 of Part 4. Otherwise, the contents of your report should be as in exercise 1 of**

**Part 4, but now with information and results for the experiments of this exercise. You may**

**optionally wish to try ensembles (e.g., majority voting of the best checkpoints, temporal**

**averaging of the weights of the best checkpoints, combining RNN and CNN classifiers).**

