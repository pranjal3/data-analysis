**Project 1**<br>
<br>
Name: Homesite Quote Conversion Prediction<br>
Problem Statement: Insurance companies often provide quotes, but only a subset convert into actual policy purchases. This project aims to build a predictive model to estimate the likelihood of a quote conversion, allowing marketing and sales teams to better allocate resources.
<br>
<br>
**Dataset**<br>
- Source: Kaggle
- Features include: demographic, geographic, and product-level data.
- Target variable: `QuoteConversion_Flag` (1 if converted, 0 otherwise).
- Dataset size: 260,000+ rows and 300+ features.

**Workflow**
1. **Data Cleaning** – Null handling, categorical encoding, and feature pruning.
2. **Feature Engineering** – Interaction features and transformation of high-cardinality columns.
3. **Modeling** – Multiple classifiers tested:
    - Logistic Regression
    - Random Forest
    - XGBoost
4. **Evaluation** – Metrics used include ROC AUC and LogLoss.

**Key Results**

- Best model: XGBoost
- ROC AUC: *~0.85*
- LogLoss: *~0.42*
- Feature importance highlights: PersonalField84, SalesField2A, CoverageField3B

**Tools & Libraries**  

- Python
- Pandas, NumPy
- Scikit-learn
- XGBoost
- Matplotlib, Seaborn
<br>
<br>

**Project 2**<br>
Name: Santander Customer Satisfaction Prediction<br>
Problem Statement: The goal is to identify dissatisfied customers based on anonymized behavior and service variables. This allows the bank to intervene early and improve customer retention through proactive measures.
<br>
<br>
**Dataset**<br>
- Source: Kaggle
- Features: 370 anonymized numeric variables
- Target variable: TARGET (1 = dissatisfied customer, 0 = satisfied)
- Dataset size: 76,000+ observations

**Workflow**
1. Data Cleaning – Removed zero-variance columns and handled duplicates
2. Feature Engineering – Created new ratio features and removed highly correlated attributes
3. Data Balancing – Applied SMOTE to correct class imbalance (only 7% dissatisfaction)
4. Modeling – Evaluated multiple models:
- Logistic Regression
- Random Forest
- XGBoost
5. Evaluation – Used confusion matrix, ROC AUC, and classification reports

**Key Results**
- Best model: Random Forest with SMOTE
- Accuracy: ~94%
- ROC AUC: ~0.88
- Class imbalance correction significantly improved model reliability

**Tools & Libraries**
- Python
- Pandas, NumPy
- Scikit-learn
- XGBoost
- Imbalanced-learn (SMOTE)
- Matplotlib, Seaborn
<br>
<br>
