# Large Scale Data Management

This folder contains my coursework and assignments for the "Large Scale Data Management" module, part of the MSc in Artificial Intelligence & Data Science (Trimester 2). The course focused on the principles, technologies, and systems used for managing and processing massive volumes of data in distributed environments.

## 📖 Course Overview

This course introduced the core building blocks of **large-scale data management systems**, with a focus on how raw data can be transformed into actionable insights using distributed computing architectures. It emphasized both theoretical understanding and hands-on experience with industry-standard big data tools.

The course covered topics such as:
- Evolution and architecture of modern **relational systems**  
- Distributed file systems like **HDFS**  
- Batch processing frameworks such as **MapReduce** and **Hive**  
- Scalable analytics using **Apache Spark** and **Spark SQL**  
- Real-time stream processing with **Spark Streaming**  
- Efficiency of **column-store databases** for analytical workloads  
- System design principles for scalable and fault-tolerant data processing

By the end of the course, I gained practical experience in:
- Installing, configuring, and using open-source big data tools  
- Performing distributed data analysis and transformations using Spark  
- Executing SQL-like queries on large-scale datasets using Hive and Spark SQL  
- Processing data streams in real time using Spark Streaming  
- Understanding how system bottlenecks and storage formats affect performance  
- Applying big data technologies to solve machine learning and text analysis problems close to the data

The coursework included **two major assignments**, each designed to build hands-on skills in real-world big data environments. These are documented below.

## 📂 Assignments

### 📝 Assignment 1 – Hadoop MapReduce & Big Data Processing

- **Summary:**  
  This two-part assignment focused on building and executing **MapReduce applications** using a Hadoop setup within a virtualized environment. In **Part I**, i deployed a local Hadoop cluster using **Vagrant** and **Docker**, compiled a sample Java MapReduce job with **Maven**, and ran it on a selected input file from Project Gutenberg. In **Part II**, i developed a custom MapReduce program to analyze a large car sales dataset and compute meaningful aggregated insights per seller and month.

- **Focus Areas:**  
  **Part I – Hadoop Setup & Sample Execution**  
  - Initialized a Hadoop cluster using Vagrant and Docker containers  
  - Built the example MapReduce application with **Java** and **Maven**  
  - Used **HDFS** to upload input data and store job output  
  - Ran and monitored the MapReduce job through both CLI and the web interface  
  - Collected logs and analyzed output for a custom input file  

  **Part II – Custom MapReduce Application**  
  - Parsed a real-world **car sales CSV** dataset, ignoring the header line  
  - Computed for each `(seller, month)` pair:
    - The car with the **maximum (selling price – MMR)** difference  
    - The average difference of all cars for the same pair  
  - Designed custom key-value data types for intermediate results  
  - Implemented and documented `Mapper`, `Reducer`, and optional `Combiner` logic in Java  
  - Delivered two Java classes (Driver and Map/Reduce) with clear inline comments

- **Deliverables:**  
  - Terminal output and job logs for Part I  
  - Java source code for custom MapReduce job  
  - Brief project report describing input files, execution steps, and output analysis

### 📝 Assignment 2 – Kafka Streaming & Spark + Cassandra Integration

- **Summary:**  
  This assignment focused on implementing a **real-time data processing pipeline** using Apache Kafka, Apache Spark Structured Streaming, and Apache Cassandra. In **Part I**, i built a Python script that continuously streams simulated movie rating data into Kafka. In **Part II**, i developed a PySpark streaming application that processes this data, enriches it using a reference dataset, and stores the results in a Cassandra database optimized for analytical queries.

- **Focus Areas:**  
  **Part I – Kafka Producer with Python**  
  - Generated a synthetic movie rating stream using **Python** and the **Faker** library  
  - Streamed records containing: user name (including my own), movie title, timestamp, and random rating (1–10)  
  - Used Kafka’s producer API to send records to a specified topic  
  - Ensured periodic streaming with a configurable interval (1 message per minute per user)

  **Part II – Spark Structured Streaming to Cassandra**  
  - Built a **PySpark** script to consume Kafka messages in real time  
  - Joined streaming data with static movie metadata from `netflix.csv`  
  - Persisted enriched movie rating records into a **Cassandra** table  
  - Designed the Cassandra schema to support efficient hourly aggregations per person  
  - Enabled **caching** in Spark to reduce redundant computations  
  - Provided sample **CQL queries** to calculate:
    - Average runtime of movies rated by a specific user within a given hour  
    - Names of movies rated in that timeframe

- **Deliverables:**  
  - Python Kafka producer script  
  - PySpark structured streaming job script  
  - Cassandra schema and persistence logic  
  - Sample persisted rows and CQL query results  
  - Brief report explaining the system architecture and execution

## 📌 Wrapping Up

This course provided a strong foundation in distributed data systems and modern big data technologies. Through the hands-on assignments, i learned how to work with the Hadoop ecosystem, design and execute MapReduce jobs, and build real-time data pipelines using Kafka, Spark, and Cassandra.  

By implementing both batch and streaming workflows, i developed practical skills in scalable data processing, system setup, and integration of open-source tools. These experiences helped me understand how to design robust data architectures that support high-throughput analytics and enable near real-time insights in large-scale environments.
