-- Question 1 🧑‍💼
-- Get employee first name, last name, email, and their office code using INNER JOIN
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;

-- Explanation:
-- INNER JOIN returns only the employees that are assigned to an office.

-- Question 2 🛍️
-- Get product name, vendor, and product line using LEFT JOIN
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;

-- Explanation:
-- LEFT JOIN ensures all products are shown even if there is no matching product line.

-- Question 3 📦
-- Get first 10 orders with order details using RIGHT JOIN
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON c.customerNumber = o.customerNumber
ORDER BY 
    o.orderDate
LIMIT 10;

-- Explanation:
-- RIGHT JOIN makes sure all orders are included, even if there’s no matching customer record.
-- Limiting the result to the first 10 orders based on orderDate.
