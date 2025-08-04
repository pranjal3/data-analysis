**Project 1**<br>
<br>
_Name:_ Homesite Quote Conversion Prediction<br>
_Problem Statement:_ Insurance companies often provide quotes, but only a subset convert into actual policy purchases. This project aims to build a predictive model to estimate the likelihood of a quote conversion, allowing marketing and sales teams to better allocate resources.
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
_Name:_ Santander Customer Satisfaction Prediction<br>
_Problem Statement:_ The goal is to identify dissatisfied customers based on anonymized behavior and service variables. This allows the bank to intervene early and improve customer retention through proactive measures.
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

**Project 3** <br>
_Name:_ Term Deposit Subscription Analysis
_Problem Statement:_ The goal is to evaluate how marketing strategies—such as communication methods and campaign timing—influence customer conversion for term deposits. Using causal inference and statistical testing, the project aims to generate actionable insights that can improve campaign effectiveness in the retail banking sector.
<br>
<br>

**Dataset** <br>
Source: Portuguese Banking Institution <br> 
Features: Client demographics, communication channel, contact history, macroeconomic indicators <br>
Target variable: y (yes = subscribed to term deposit, no = did not subscribe) <br>
Dataset size: 41,188 observations, 21 features <br>
 <br>
 
**Workflow**  <br>
- Data Preprocessing – Converted categorical variables, handled missing and unknown values <br>
- Exploratory Analysis – Analyzed distributions by age, job, education, and previous outcomes <br>
- Statistical Testing – Performed A/B testing with confidence intervals to assess: <br>
Impact of communication type (cellular vs telephone) <br>
Impact of campaign timing (pre- vs post-summer months) <br>
- Causal Inference- Applied Difference-in-Differences (DiD) to evaluate the effect of timing <br>
- Business Interpretation- Identified conversion patterns and proposed data-driven strategies for future outreach <br>
 <br>
 
**Key Results** <br>
Contact method significantly impacted subscription rate (cellular outperformed telephone) <br>
Campaigns launched after summer saw improved conversion, as verified via DiD analysis <br>
Repeat contacts had diminishing returns; first-time contacts performed better <br>
Clear evidence of bias and confounding from previous campaign exposure was addressed with controls <br>
 <br>
 
**Tools & Libraries** <br>
Python <br>
Pandas, NumPy <br>
Statsmodels, SciPy <br>
Matplotlib, Seaborn <br>
Causal inference (custom DiD implementation) <br>
<br> <br>

**Project 4**<br>
_Name:_ Kickstarter Project Success Analysis<br>
_Problem Statement:_ The objective is to analyze historical Kickstarter campaign data to uncover patterns that lead to project success. By identifying key trends in categories, funding goals, and time-based factors, creators and analysts can make more informed decisions about project viability.
<br>
<br>

**Dataset**<br>
- Source: Kaggle <br> {https://www.kaggle.com/datasets/kemical/kickstarter-projects/discussion?sort=hotness}
- Features: Project name, category, funding goal, pledged amount, currency, country, launch/deadline dates, backers, and final outcome <br>
- Target variable: state (e.g., successful, failed, canceled) <br>
- Dataset size: 378,000+ observations <br>
<br>

**Workflow** <br>

1. Data Exploration – Inspected schema, column types, and distribution of outcomes <br>
2. Data Cleaning – Handled nulls in name and financial columns; adjusted improper data types <br>
3. Analysis – Wrote SQL queries to examine: <br>
Success rate by category and country <br>
Average funding goals across categories <br>
Top 10 most-funded projects <br>
Launch trends over time <br>
4. Date Transformation – Converted launched column to datetime for year-based grouping <br>
 <br>
 
**Key Results** <br>
Overall project success rate: ~35%  <br>
Most successful categories: Dance, Theater, Comics <br>
Highest average funding goals: Technology, Design <br>
Top pledged projects: Primarily in Games and Design <br>
Projects with mid-range goals ($5,000–$20,000) had higher success rates <br>
 <br>
 
**Tools & Technologies** <br>
SQL Server Management Studio (SSMS) <br>
SQL Server Express <br>
T-SQL (Transact-SQL) <br>
<br> <br>

**Project 5**<br>
_Name:_ Fraudster Detection for Revolut<br>
_Problem Statement:_ The objective of this take-home assignment is to build a machine learning model that can identify fraudulent users based on user profile data and transaction behavior. By engineering meaningful features and analyzing behavioral patterns, we aim to differentiate fraudsters from legitimate users and evaluate the performance of a fraud detection model.
<br>
<br>

**Dataset**<br>
- Source: Stratascratch- Revolut (Take-home assignment dataset)<br>
{ https://platform.stratascratch.com/data-projects/fraudsters-detection }
- Features: KYC status, birth year, account creation date, country, failed sign-in attempts, transaction amount, transaction type, entry method, currency, merchant country<br>
- Target variable: IS_FRAUDSTER (Boolean: 1 if user is a fraudster, else 0)<br>
- Dataset size: 9,944 users and 688,651 transactions<br>
<br>

**Workflow** <br>

1. Data Exploration – Analyzed class imbalance, age trends, failed sign-ins, and transactional patterns<br>
2. Feature Engineering – Created new features like age, chip usage rate, transaction amount statistics, and merchant diversity<br>
3. Data Aggregation – Merged user and transaction-level data into a unified modeling dataset<br>
4. Model Building – Trained a Random Forest classifier using stratified train-test split and class weighting<br>
5. Evaluation – Assessed model performance using ROC-AUC, precision, recall, and feature importance<br>
<br>

**Key Results** <br>
Fraud rate in the dataset: ~0.8% (highly imbalanced)<br>
Fraudsters had fewer transactions but higher variance in amounts<br>
Chip usage was significantly lower among fraudsters, suggesting riskier transaction methods<br>
Failed sign-in attempts were notably higher for fraudulent users<br>
Top predictive features included: transaction count, chip usage rate, average amount, and failed sign-ins<br>
<br>

**Tools & Technologies** <br>
Jupyter Notebook<br>
Python<br>
Pandas, NumPy<br>
Seaborn, Matplotlib<br>
scikit-learn (RandomForestClassifier, train_test_split, classification_report, roc_auc_score)<br>
