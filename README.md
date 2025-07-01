
# Task 5: E-commerce Database SQL Joins

This repository contains an SQL script (`e_commerce_db_task5.sql`) focused on combining data from multiple related tables using various `JOIN` operations within your E-commerce PostgreSQL database.

---

## Objective

The main goal of this task is to gain a clear understanding and hands-on experience in retrieving and integrating data effectively from two or more tables by:
* Utilizing **`INNER JOIN`** to fetch records where there's a match in both tables.
* Employing **`LEFT JOIN`** to retrieve all records from the left table and matching records from the right table.
* Demonstrating **`RIGHT JOIN`** to retrieve all records from the right table and matching records from the left table.
* Exploring **`FULL JOIN`** (or `FULL OUTER JOIN`) to return all records when there is a match in either the left or the right table.
* Mastering the **`ON` clause** to specify join conditions based on related columns (Primary Key - Foreign Key relationships).

---

## Contents

* `e_commerce_db_task5.sql`: The primary SQL script containing various join query examples.

---

## Key Demonstrations

The script illustrates a range of `JOIN` queries, specifically demonstrating the use of the `public` schema prefix common in PostgreSQL:

* **`INNER JOIN` (Orders with Customer Details)**: Shows how to link `public.customers` and `public.orders` to retrieve customer names alongside their order details, only for customers who have placed orders.
* **`LEFT JOIN` (All Customers with Orders)**: Demonstrates how to list every customer from `public.customers`, and if they have placed an order in `public.orders`, their order details are included. Customers without orders will still appear.
* **`RIGHT JOIN` (All Products with Order Data)**: Illustrates linking `public.order_items` with `public.products` to show all products, including those that may not have any associated order items, and including details like `unit_price`.
* **`FULL JOIN` (Customers and Orders Relationship)**: Shows how to combine all records from `public.customers` and `public.orders`, including those that have matches and those that do not, providing a comprehensive view of the relationship.

---

## How to Use

1.  **Prerequisite**: Ensure your E-commerce database schema and sample data are already set up and populated in your PostgreSQL environment. You should have completed:
    * [Task 1 - Database Setup and Schema Design](https://github.com/sanjay-it-is/e-commerce-db)
    * [Task 2 - Data Insertion and Handling Nulls](https://github.com/sanjay-it-is/e-commerce-db_task2)
    * [Task 3 - Basic SELECT Queries](https://github.com/sanjay-it-is/e-commerce-db_task3)
    * [Task 4 - Aggregate Functions and Grouping](https://github.com/sanjay-it-is/e-commerce-db_task4)
2.  **Connect to your Database**: Open your preferred PostgreSQL client (e.g., `psql` command line, pgAdmin, DBeaver).
3.  **Execute the Script**: You can run the `e_commerce_db_task5.sql` file against your `e_commerce_db` database.

    ```bash
    -- Example using psql:
    psql -U your_username -d e_commerce_db -f e_commerce_db_task5.sql
    ```
    Alternatively, you can copy and paste individual queries or the entire script into your client and execute them to see the results.

---

## 📝 Outcome

By working through this script, you will gain a clear understanding of how to effectively combine and analyze related data across multiple tables using various `JOIN` types. This skill is fundamental for retrieving complex datasets and forms the backbone of relational database querying.
