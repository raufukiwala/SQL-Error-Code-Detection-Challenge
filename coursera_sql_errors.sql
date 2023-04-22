/* 
Exercise 1:
Goal: Here we use users table to pull a list of user email addresses. Edit the query to pull email
addresses, but only for non-deleted users.

Starter Code:
SELECT *
FROM dsv1069.users
*/

-- SOLUTION

SELECT email_address
FROM dsv1069.users
WHERE deleted_at IS NULL;


/*
Exercise 2:
--Goal: Use the items table to count the number of items for sale in each category

Starter Code: (none)
*/

-- SOLUTION

SELECT  category,
        COUNT(category) AS total_cat_items
FROM dsv1069.items
GROUP BY category;


/*
Exercise 3:
--Goal: Select all of the columns from the result when you JOIN the users table to the orders
table

Starter Code: (none)
*/

-- SOLUTION

SELECT *
FROM dsv1069.items AS i
JOIN dsv1069.orders AS o
ON  i.id = o.item_id;





