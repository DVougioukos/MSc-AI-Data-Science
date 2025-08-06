The 1st assignment for the course of Practical Data Science 2024/2025 comprises two sections.



**A**



**Basic:** Load the annotation files and compute the probability per emotion per annotator. Visualise it in a single plot.

**IAA:** Compute the pairwise inter-annotator agreement, using both Cohen's kappa and percentage agreeemnt. Compare the two and discuss any differences. Visualise the best of the two using a table of agreement with a heatmap.

Ground-truth: Compute a ground truth value per emotion per text (e.g., using a majority vote).

**LLMs:** Prompt an open-source large language model (LLM), such as the Llama-3-8b-instruct (quantized) that we used in class to annotate each text for existing emotions.

**Agents:** Instructing the LLM to have a different sociodemographic background before annotating. For instance, using gender, instruct the LLM to be a man and then to be a woman. Compare the two sets of annotations and quantify how much does the background affects the model's decisions. Compute the IAA between the agents and the human annotators. Discuss the outcomes.



**Β**



**Basic:** Load the English proverbs, which have been translated by Llama-3-8b-instruct. Report any redundant text you find in these.

**Preprocessing:** Using Regular Expressions, post-process the outcome by removing redundant text (e.g., following the translation in parenthesis).

**Exploration:** Compare the number of characters and words between the two languages, Greek and (post-processed) English. Compute and compare the most frequent words per language.

**Visualisation:** Compute frequent English words per location, and visualise the most frequent on a map.

**Normalisation:** The translation and the post-processing step will yield many (Greek) to one (English) proverbs. Create a visualisation to show the translations that correspond to more than one Greek proverbs.

&nbsp;

