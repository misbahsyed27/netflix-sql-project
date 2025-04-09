# Netflix Data Cleaning & Analysis (SQL Project)

This project focuses on data cleaning, exploration, and analysis of the Netflix dataset using **MySQL**. It demonstrates my ability to work with real-world data, clean it efficiently, and extract meaningful insights that can help guide business decisions.

---

## Overview

- Cleaned and structured raw Netflix data (~6,000 records) for analytical use.
- Used SQL to handle missing values, standardize inconsistent data, and fix formatting issues.
- Analyzed trends such as top genres, most active production countries, and yearly content growth.
- Designed SQL queries to uncover insights and support strategic content decisions.
- Created visuals using Tableau to enhance storytelling and interpretation.

---

## Dataset

**Source:** [Kaggle - Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)    
**Columns Include:**
- `show_id`
- `type` (Movie or TV Show)
- `title`
- `director`
- `country`
- `date_added`
- `release_year`
- `rating`
- `duration`
- `listed_in` (Genre)

---

## Data Cleaning Steps

- Removed duplicates
- Handled `NULL` values in key columns like `director`, `country`, and `date_added`
- Converted `release_year` (INT) into `YEAR` format
- Standardized `date_added` as proper `DATE` data type
- Parsed and cleaned `duration` field for movies vs shows

---

## Analysis & Insights

- Year-wise trend of content being added
- Top countries contributing to Netflix's library
- Most popular genres and sub-genres
- Most frequent directors
- Movie vs TV Show distribution

---

## SQL Concepts Used

- `GROUP BY`, `ORDER BY`, `HAVING`, `COUNT`, `DISTINCT`
- `IS NULL`, `LIKE`, `CASE`, `CAST`, `STR_TO_DATE()`
- Filtering with `WHERE`, `IN`, `LIMIT`
- Data type conversion and string operations
---

## Tools Used

- **SQL (MySQL Workbench)**
---

## 📁 Project Structure


