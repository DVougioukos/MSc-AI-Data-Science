# Knowledge Graphs with LLMs

This folder contains my coursework and deliverables for the "Knowledge Graphs with LLMs" module, part of the MSc in Artificial Intelligence & Data Science (Trimester 1). The course explored how Large Language Models (LLMs) and Knowledge Graphs (KGs) can be integrated to improve the construction, interpretation, and application of structured knowledge. Below you will find an overview of the course content followed by detailed summaries of each assignment.

## 📖 Course Overview

The course focused on the intersection of **Knowledge Graphs (KGs)** and **Large Language Models (LLMs)**, exploring how these technologies can complement one another to enhance data understanding, reasoning, and application development.

The course introduced students to the full lifecycle of knowledge graphs — from schema design and data population to quality assurance and evolution — while emphasizing how LLMs can support or accelerate each phase. At the same time, it examined how structured knowledge representations (KGs) can enhance the accuracy, reliability, and explainability of LLM-based systems.

By the end of the course, I gained a deep understanding of how to:
- Design and implement a knowledge graph schema using Semantic Web standards (RDF, OWL, SKOS, SHACL) and property graphs (Neo4j).
- Use LLMs to aid schema design, extract knowledge from unstructured sources, and populate knowledge graphs.
- Build and evaluate pipelines for knowledge graph population.
- Apply knowledge graphs in real-world applications like entity linking, disambiguation, and LLM grounding.
- Address quality challenges and support the long-term evolution of knowledge graphs.

The course was structured into five main units:
1. **Understanding Knowledge Graphs & LLMs**  
   Foundations of KGs, their value, lifecycle, and connection to LLMs.
2. **Schema Design**  
   Schema modeling using Semantic Web and property graph technologies, plus LLM-assisted design.
3. **Graph Population**  
   Data source evaluation, population pipelines, LLM-based information extraction.
4. **Graph Utilization**  
   Applications of KGs and their role in grounding LLM responses.
5. **Quality & Evolution**  
   Quality assessment, typical issues, and approaches to maintenance and scalability.

## 📂 Assignments

### 📝 Assignment 1: Knowledge Graph Schema Design
- **Summary**

  Expanded a movie knowledge graph to support complex competency questions related to genres, production countries, and user reviews. The task involved extending both a Neo4j property graph and an OWL/RDF     ontology, ensuring the schema could support expressive querying using Cypher and SPARQL.

- **Tools**

  Neo4j (AuraDB), Protégé, Cypher, SPARQL, Large Language Models (LLMs)

- **Focus Areas**

  - Schema design and modeling trade-offs
  - LLM-assisted development and critical evaluation of outputs
  - Alignment of schema structure with natural language query requirements

- **Deliverables**

  - Updated Neo4j and OWL schema files
  - Sample Cypher and SPARQL queries
  - Report with detailed information about modeling options

### 📝 Assignment 2: Knowledge Graph Population

- **Summary:**  

  Built an LLM-powered relation extractor to populate a knowledge graph by identifying semantic relationships between people, organizations, cities, schools, and spouses from unstructured text. The system     was designed using **prompt-based classification** without any fine-tuning.

- **Tools:**  

  Python, OpenAI API, zero-shot and few-shot prompting, Large Language Models (LLMs)

- **Focus Areas:**  

  - Prompt engineering for relation extraction across four relation types  
  - Evaluation using a labeled dataset with precision and recall metrics  
  - Analysis of systematic errors and model limitations  
  - Extended evaluation on edge cases involving **uncertainty** and **advice/wish** expressions through a custom dataset

- **Deliverables:**  

  - Relation extraction notebook  
  - Evaluation dataset for edge-case scenarios  
  - Report explaining design decisions, prompting strategy, and evaluation findings

### 📝 Assignment 3: Applying Knowledge Graphs

- **Summary:**  

  Evaluated and improved a QA system that translates natural language questions into **Cypher queries** for querying a Neo4j movie knowledge graph. The goal was to assess the performance of LLM-generated      queries and enhance them through prompt refinement.

- **Tools:**  

  Python, Neo4j, OpenAI API, Cypher, Large Language Models (LLMs)

- **Focus Areas:**  

  - Created a diverse evaluation set of natural language questions  
  - Identified common LLM errors in Cypher generation  
  - Improved performance using zero-shot and few-shot prompting strategies  
  - Analyzed impact of prompt engineering on query accuracy

- **Note:**  

  Task 3 (Dynamic Few-Shot Prompting) was optional and not completed due to time constraints.

- **Deliverables:**  

  - Evaluation question set and Cypher query results  
  - Improved prompt versions and comparison analysis  
  - Report detailing methodology, results, and LLM behavior observations

### 📝 Assignment 4: Knowledge Graph Quality

- **Summary:**  

  Assessed the quality of the **DBPedia** knowledge graph through two tasks: detecting term ambiguity in the schema and evaluating the correctness of class assignments for external skill concepts. The        assignment focused on schema understandability and the challenges of modeling abstract concepts.

- **Tools:**  

  Python, SPARQL, OpenAI API, Large Language Models (LLMs)

- **Focus Areas:**  

  - Developed a **term ambiguity detector** using both dictionary-based methods (WordNet/Wiktionary) and LLM-based approaches  
  - Compared effectiveness and efficiency of LLM vs. traditional lexical resources for ambiguity detection  
  - Linked **ESCO skill entities** to DBPedia and used LLMs to evaluate the accuracy of their class assignments  
  - Identified DBPedia classes with higher misclassification rates, especially for abstract concepts

- **Deliverables:**  

  - Implementation notebooks for both tasks with clear usage instructions  
  - Report detailing detection methods, evaluation strategy, and findings on schema ambiguity and class accuracy

## 📌 Wrapping Up

Through these assignments, I gained hands-on experience with both symbolic and neural approaches to knowledge representation. I learned to design, populate, and assess knowledge graphs while integrating LLMs effectively across these processes. The course sharpened my ability to work with structured and unstructured data and evaluate AI systems that blend symbolic and statistical methods.
