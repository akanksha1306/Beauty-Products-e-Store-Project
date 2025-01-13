# Beauty-Products-e-Store-Project

**Introduction:**

The database development for an e-store selling beauty products globally. This database was developed to enhance efficiency and streamline information flow for an e-store specializing in global beauty product sales. Key components include tables for Employees, Beauty Products Inventory, Orders, Customers, and Suppliers. Product Categories are organized with distinct names and numbers, each encompassing a specific set of products with detailed information like name, description, price, and image. Inventory management meticulously tracks stock availability, sales, and orders placed with suppliers. The database accommodates multiple suppliers for each product, recording supplier names, tracking information, and the products they supply. Customers can create accounts, place orders, and their information (name, contact details, addresses, order history) is securely stored. Each order is uniquely identified with an order number, date, status, and total order amount, enabling comprehensive order tracking.

**​Need:​**
The e-store needs a database to manage its operations efficiently and to keep track of its employees, inventory, orders, customers, and suppliers.​
The database provides a secure platform to store and manage information and improve the flow of information between different parts of the business.​
​
**Requirements:​**
We require the database to handle a high volume of data and transactions from multiple sources.​
It is easy to use and provides a user-friendly interface for employees to input and access data. It is secure, with restricted access to sensitive information.​
It is scalable to accommodate the growth of the business over time.​
​
**Functionality:​**
The database provides a platform to manage employee information, such as their personal data and roles within the organization.​
The database enables the e-store to manage its inventory efficiently, keeping track of stock levels, sales, and orders from suppliers.​
The database provides a platform for customers to create accounts, place orders, and view their order history.​
The database enables the e-store to manage its supplier information, such as their contact details and the products supplied.​
The database provides a platform for generating reports on inventory, sales, and other metrics to help the business make informed decisions.​

Database Design​: ERD DIAGRAM​
​
Description of Entity Type​, Relationship Type​, Keys/cardinality Constraints​
​
 <img width="663" alt="image" src="https://github.com/user-attachments/assets/1a53f680-01e5-4626-b837-efe1309efdc8" />

 Relational Database using Referential Integrity : Identifying Primary key and Foreign key

 <img width="675" alt="image" src="https://github.com/user-attachments/assets/12c1319e-6fdd-4caf-b9bb-4c38bac75516" />

Normalization​
​Relational schema after normalization:​
Customer, Employee and Beauty Products tables are not in the 3NF Form as they have transitive dependency​
PostalCode->City, State​
Decomposition of the relational schema to perform the normalization​.

<img width="685" alt="image" src="https://github.com/user-attachments/assets/044f3959-b7b1-45e8-a184-4d87b0685b4d" />



 

