# Numerical Optimization and Large Scale Linear Algebra

This folder contains my coursework and assignments for the **"Numerical Optimization and Large Scale Linear Algebra"** module, part of the MSc in Artificial Intelligence & Data Science (Trimester 2). This high-level course provides in-depth knowledge of matrix computations and numerical methods essential for solving large-scale scientific problems, with practical implementations primarily in Python.

## 📖 Course Overview

Numerical linear algebra is of great practical importance in scientific computation and is widely used across mathematics, natural sciences, computer science, and social sciences. Many nonlinear problems also rely on linear algebra in their solutions.

This course covers numerical solutions of systems of linear equations, including direct methods, error analysis, structured matrices, iterative methods, and least squares. Applications in industry and Internet technologies are explored, alongside the development of computer-based scientific problem-solving skills.

By completing the course, I learned to:  
- Apply basic matrix factorization methods for solving linear systems and least squares problems  
- Understand computer arithmetic concepts such as conditioning and stability of numerical methods  
- Implement numerical methods for eigenvalue computation  
- Use iterative methods to solve large linear systems  
- Employ spectral methods for data analysis and compression  
- Implement these numerical algorithms in Python

### Topics Covered

- Introduction to scientific computing: approximation, computer arithmetic, errors, conditioning, and large-scale data matrices  
- Curve fitting: least squares, polynomial fits, L1 norm fitting and else
- Linear systems (direct and iterative methods)
- SVD analysis and applications
- Least squares problems
- Randomized algorithms for matrices and data  
- Numerical methods for large eigenvalue problems  

The course consisted of **3 assignments**, each designed to deepen understanding and provide hands-on experience with the numerical methods and algorithms covered. These are documented below.

## 📂 Assignments

### 📝 Assignment 1 – Lamp Power Optimization for Uniform Illumination

- **Summary:**  
  This assignment models the problem of illuminating a 2D area divided into pixels using a set of lamps. The goal is to determine the power settings of the lamps to achieve a desired uniform illumination pattern across all pixels, formulated as a least squares problem.

- **Problem Setup:**  
  - The area is a 25 × 25 grid (625 pixels.  
  - There are 10 lamps positioned at specified (x, y, height) coordinates.  
  - Illumination at each pixel is a linear function of lamp powers: **l = A p**, where **A** is an m×n matrix representing illumination patterns.  
  - The illumination decays with the inverse square of the distance between lamps and pixels.  
  - The matrix **A** is scaled so that if all lamps have power 1, the average illumination is 1.  
  - The desired illumination pattern is uniform with value 1.

- **Tasks:**  
  1. Visualize illumination using colormaps for (a) all lamps at power 1 and (b) optimized powers minimizing least squares error. Compute and compare the Root Mean Squared (RMS) errors.  
  2. Plot histograms of pixel illumination values for both power settings and interpret the results.  
  3. Add constraints: total lamp power equals 10 and individual lamp powers are non-negative. Find the constrained optimal lamp powers minimizing the least squares error.  
  4. **Challenge:** Optimize lamp positions (within height 4–6 meters and inside the area) to improve RMS error under the same power constraints. Visualize the illumination pattern and histogram for the best found configuration.

- **Deliverables:**  
  - A concise notebook with computations, analysis, and brief theoretical insights.
 
### 📝 Assignment 2 – Classification of Handwritten Digits Using SVD

- **Summary:**  
  This assignment focused on classifying handwritten digit images using Singular Value Decomposition (SVD). The goal was to build an algorithm that leverages the dominant singular vectors of each digit class to classify unknown test digits based on least squares residuals.

- **Dataset:**  
  - Training images: 256 × 1707 matrix representing 16×16 pixel images flattened to 256-length vectors  
  - Training labels: digit values  
  - Test images and test labels 

- **Tasks:**  
  1. Compute the SVD of each class matrix from the training set and use the first 5–20 singular vectors as a class basis.  
  2. Classify test digits by measuring how well they can be represented by each class basis using the relative residual from least squares approximation.  
  3. Tune the number of basis vectors to optimize classification accuracy and present results in tables or graphs.  
  4. Analyze class-wise classification difficulty and inspect misclassified or poorly written digits.  
  5. Investigate singular values per class to determine if varying the number of basis vectors per class improves accuracy. Perform experiments to test this hypothesis.

- **Optional Tasks:**  
  - Implement a two-stage classification:  
    - Stage 1: Compare unknown digits using only the first singular vector per class to filter easy classifications.  
    - Stage 2: Apply full basis comparison only if necessary. Analyze the frequency and effectiveness of this optimization.  
  - Implement classification using tangent distance by computing x- and y-derivatives via finite differences, incorporating seven geometric transformations.  
  - Compare test digits against all training digits directly and classify by closest match using tangent distance.  

- **Deliverables:**  
  - A concise notebook with computations, analysis, and brief theoretical insights.
 
### 📝 Assignment 3 – PageRank Computation and Link Farm Analysis

- **Summary:**  
  This assignment focused on computing the PageRank vector of a real-world web graph using two methods: the Power Method and the Gauss-Seidel method for solving the linear system. The goal was to analyze convergence behavior under different damping factors and explore how artificial link structures (link farms) influence PageRank.

- **Dataset:**  
  - Stanford web graph (`Stanweb.dat`) containing directed links between pages.

- **Tasks:**  
  1. Compute PageRank with both methods and compare results and efficiency.  
  2. Investigate the effect of a higher damping factor.  
  3. Analyze convergence speed across nodes.  
  4. Study the impact of adding fake pages (link farms) on PageRank and explore strategies to manipulate ranking.

- **Deliverables:**  
  - A concise notebook with computations, analysis, and brief theoretical insights.

📌 Wrapping Up  
This course deepened my understanding of numerical methods and their critical role in solving large-scale problems in data science. From optimization techniques to efficient linear algebra operations, i gained practical experience applying iterative algorithms, matrix factorizations, and graph-based computations to real-world datasets.

Through the assignments, i improved my proficiency in Python and numerical computing libraries, developed a solid intuition for algorithmic convergence and stability, and learned how to tackle challenges in scalable data processing, such as dimensionality reduction and PageRank computation on web-scale graphs.
