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


/*
Exercise 4:
--Goal: Check out the query below. This is not the right way to count the number of viewed_item
events. Determine what is wrong and correct the error.

Starter Code:
SELECT
COUNT(event_id) AS events
FROM dsv1069.events
WHERE event_name = ‘view_item’
*/

-- SOLUTION

-- Table name is missing in the WHERE clause

SELECT 
COUNT(event_id) AS events
FROM dsv1069.events
WHERE events.event_name = 'view_item';


/*
Exercise 5:
--Goal:Compute the number of items in the items table which have been ordered. The query
below runs, but it isn’t right. Determine what is wrong and correct the error or start from scratch.

Starter Code:
SELECT
    COUNT(item_id) AS item_count
FROM dsv1069.orders 
INNER JOIN dsv1069.items
ON orders.item_id = item.id;

--Error: This query runs but the number isn’t right
*/

-- SOLUTION

-- Table is quite right, however i fine tuned it with table name aliases to make more readable

SELECT COUNT(item_id) AS item_count
FROM dsv1069.orders AS o
JOIN dsv1069.items AS i
ON i.id = o.item_id;





