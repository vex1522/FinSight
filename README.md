# FinSight: Automated Payment Analytics Platform 📊

## Overview
FinSight is an end-to-end data pipeline and machine learning platform designed to optimize Accounts Receivable (AR). It ingests raw customer payment data, structures it within a relational database, and utilizes a Logistic Regression model to predict the probability of late or missed payments.

## 🚀 Key Features
* **Data Ingestion & Cleaning:** Automated pipeline using `pandas`.
* **SQL Analytics Engine:** Relational schema designed to track invoices and generate AR Aging Reports.
* **Predictive Modeling:** Implemented a balanced Logistic Regression model (`scikit-learn`).

## ⚙️ Installation
1. Clone this repository.
2. Create a virtual environment: `python -m venv venv`
3. Install dependencies: `pip install -r requirements.txt`
