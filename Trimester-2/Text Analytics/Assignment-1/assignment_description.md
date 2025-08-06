**(i) Implement (in any programming language) a bigram and a trigram language model**

**for sentences, using Laplace smoothing (slide 8) or optionally (if you are very keen) Kneser-**

**Ney smoothing (slides 50–51), which is much better. In practice, n-gram language models**

**compute the sum of the logarithms of the n-gram probabilities of each sequence, instead of**

**their product (why?) and you should do the same. Assume that each sentence starts with the**

**pseudo-token \*start\* (or two pseudo-tokens \*start1\*, \*start2\* for the trigram model) and**

**ends with the pseudo-token \*end\*. Train your models on a training subset of a corpus (e.g., a**

**subset of a corpus included in NLTK – see http://www.nltk.org/). Include in the vocabulary**

**only words that occur, e.g., at least 10 times in the training subset. Use the same vocabulary**

**in the bigram and trigram models. Replace all out-of-vocabulary (OOV) words (in the**

**training, development, test subsets) by a special token \*UNK\*. Alternatively, you may want**

**to use BPEs instead of words (obtaining the BPE vocabulary from your training subset) to**

**avoid unknown words. See Section 2.5.2 (“Byte-Pair Encoding”) of the 3rd edition of Jurafsky**

**\& Martin’s book (https://web.stanford.edu/~jurafsky/slp3/); for more information, check**

**https://huggingface.co/transformers/master/tokenizer\_summary.html.**



**(ii) Estimate the cross-entropy and perplexity of your two models on a test subset of the**

**corpus, treating the entire test subset as a single sequence of sentences, with \*start\* (or**

**\*start1\*, \*start2\*) at the beginning of each sentence, and \*end\* at the end of each sentence.**

**Do not include probabilities of the form P(\*start\*|…) or P(\*start1\*|…), P(\*start2\*|…) in the**

**computation of cross-entropy and perplexity, since we are not predicting the start pseudotokens;**

**but include probabilities of the form P(\*end\*|…), since we do want to be able to**

**predict if a word will be the last one of a sentence. You must also count \*end\* tokens (but not**

**\*start\*, \*start1\*, \*start2\* tokens) in the total length N of the test corpus.**



**(iii) Write some code to show how your bigram and trigram language models can autocomplete**

**an incomplete sentence. For example, given “I would like to commend the” (slide**

**44), generate completions like “rapporteur on his work \*end\*” or “president of the**

**Commission on his intervention \*end\*”. You can simply use the most probable next word**

**(according to your language model) at each time-step. If you are keen, you may also want to**

**use beam search, or methods like top-K or nucleus sampling, to improve the diversity of the**

**texts you generate.1 Confirm (showing some examples of generated texts) that your trigram**

**model generates more fluent texts than your bigram model.**



**(iv) Develop a context-aware spelling corrector (for both types of errors, slide 14) using your**

**bigram and/or trigram language model, a beam search decoder (slides 26–32), and the**

**formulae of slide 20. As on slide 20, you can use the inverse of the Levenshtein distance**

**between 𝑤), 𝑡) as 𝑃(𝑤)|𝑡)). If you are very keen, you may want to use better estimates of**

**𝑃(𝑤)|𝑡)) that satisfy Σ\*! 𝑃(𝑤)|𝑡)) = 1. You may also want to use:**

**𝑡̂$**

**+ = argmax**

**,"**

**#**

**𝜆$ log 𝑃G𝑡$**

**+H + 𝜆! log 𝑃(𝑤$**

**+|𝑡$**

**+)**

**to control (by tuning the hyper-parameters 𝜆$, 𝜆!) the importance of the language model score**

**log 𝑃G𝑡$**

**+H vs. the importance of log 𝑃(𝑤$**

**+|𝑡$**

**+).**



**(v) Create an artificial test dataset to evaluate your context-aware spelling corrector. You may**

**use, for example, the test dataset that you used to evaluate your language models, but now**

**replace with a small probability each non-space character of each test sentence with another**

**random (or visually or acoustically similar) non-space character (e.g., “This is an interesting**

**course.” may become “Tais is an imterestieg kourse”).**



**(vi) Evaluate your context-aware spelling corrector in terms of Word Error Rate (WER) and**

**Character Error Rate (CER), using the original (before character replacements) form of your**

**test dataset of question (v) as ground truth (reference sentences), and averaging WER (or**

**CER) over the test sentences. CER is similar to Word Error Rate (WER), but operates at the**

**character level. See, for example:**

**https://huggingface.co/spaces/evaluate-metric/wer and**

**https://huggingface.co/spaces/evaluate-metric/cer.**



**You are allowed to use NLTK (http://www.nltk.org/) or other tools and libraries for sentence**

**splitting, tokenization (including BPE tokenizers), counting n-grams, computing Levenshtein**

**distances, WER and CER, but you should write your own code for everything else (e.g.,**

**estimating probabilities, computing cross-entropy and perplexity, beam search decoding).**

**You may want to compare, however, the cross-entropy and perplexity results of your**

**implementation to results obtained by using existing code (e.g., from NLTK or other toolkits).**



**Do not forget to include in your report:**

**● A short description of the algorithms/methods that you used, including a discussion of**

**any data preprocessing steps that you performed.**

**● Cross-entropy and perplexity scores for each model (bigram, trigram) for subquestion**

**(ii).**

**● Input/output examples demonstrating how your sentence completion works, including**

**interesting cases (e.g., good and bad completions) for sub-question (iii).**

**● Input/output examples demonstrating how your spelling corrector works, including**

**interesting cases it treats correctly and incorrectly, for questions (iv) and (v).**

**● WER and CER scores (averaged over test sentences) for question (vi).**

