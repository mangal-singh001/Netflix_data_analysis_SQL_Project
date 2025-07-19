# 🎬 Netflix Data Analysis Project (SQL)

This project showcases a detailed analysis of Netflix titles using SQL. The dataset includes information about movies and TV shows, such as cast, ratings, release years, durations, and more. The goal is to derive meaningful insights from the data using structured SQL queries.

---

## 📌 Project Objectives

- Explore and clean the Netflix dataset
- Use SQL to answer business-relevant questions
- Apply filtering, grouping, subqueries, and aggregation to draw insights
- Practice real-world SQL querying techniques on a streaming dataset

---

## 🗂️ Dataset Overview

The dataset includes:
- **Title** – Name of the movie/show
- **Type** – Movie or TV Show
- **Cast** – Featured actors
- **Rating** – Maturity rating (e.g., PG, TV-MA)
- **Release Year**
- **Duration** – Length of content
- **Country**, **Genre**, and more

📁 Source: Public Netflix Dataset (CSV format)

---

## 🛠️ Tools & Technologies

- **Database:** PostgreSQL
- **Query Tool:** pgAdmin / DBeaver
- **Language:** SQL

---

## 📊 Key SQL Queries & Insights

### ✅ 1. Count of Movies vs TV Shows
```sql
SELECT type, COUNT(*) AS total_titles
FROM netflix_data
GROUP BY type;
````

### ✅ 2. Most Common Rating by Type

```sql
SELECT type, MAX(rating) AS common_rating
FROM netflix_data
GROUP BY type;
```

### ✅ 3. Titles Featuring a Specific Actor (e.g., Salman Khan)

```sql
SELECT *
FROM netflix_data
WHERE cast ILIKE '%Salman Khan%';
```

### ✅ 4. Movie with the Longest Duration

```sql
SELECT *
FROM netflix_data
WHERE type = 'Movie'
AND duration = (SELECT MAX(duration) FROM netflix_data WHERE type = 'Movie');
```

### ✅ 5. Top 10 Countries with the Most Netflix Titles

```sql
SELECT country, COUNT(*) AS total_titles
FROM netflix_data
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;
```

---

## 📌 Learnings

* Filtering data using `WHERE`, `ILIKE`, and `IN`
* Grouping and aggregating with `GROUP BY`, `COUNT()`, `MAX()`, `AVG()`
* Using subqueries and nested conditions
* Performing real-time analytical thinking with SQL

---

## 📎 How to Run

1. Import the dataset (`netflix_data.csv`) into your PostgreSQL database
2. Use pgAdmin or DBeaver to run the SQL queries from this repo
3. Analyze the outputs and modify queries for your own exploration

---

## 📁 Project Structure

```
Netflix_data_analysis_SQL_Project/
│
├── netflix_data.csv             # Dataset
├── netflix_analysis_queries.sql # SQL scripts
└── README.md                    # Project documentation
```

---


