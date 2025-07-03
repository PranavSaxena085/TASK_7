# Task 7: Creating Views
## Objective:
To learn how to create and use SQL Views for organizing and abstracting data from tables.

## Tables Created:
E_COMMERCE_TASK_7: Stores product details such as product name, category, price, quantity, availability, etc.

## Tools Used:
MySQL Workbench

Database Name: internship_task

## Operations Performed:
Inserted 10 sample product records into E_COMMERCE_TASK_7

Renamed the column Stock to Quantity using ALTER TABLE

Created Views to filter and simplify data:

Expensive_Products: Products with price > 1000 (mistakenly used e_commerce_task_6)

Low_Stock_Products: Products with quantity < 20

Product_List: Displays only product name and category

Available_Products_With_Supplier: Shows available products with a supplier name

Tested each view using SELECT * FROM view_name

Dropped a view using DROP VIEW for demonstration

# Outcome:
This task helped me understand how to use views in SQL to manage complex queries, improve readability, and control data access.
