# E-commerce-Database-Design
# Project Overview
This repository contains the SQL code for the design and implementation of a database for an E-commerce platform. The database includes tables for managing products, brands, categories, product images, and attributes like material, size, and weight.

# Project Structure
This project is divided into several components, with each member handling different areas. The database design follows the principles of normalization, ensuring data integrity and efficient storage.

# Tables & Relationships
The following tables have been created to manage the E-commerce platform's data:

brand: Stores the brands of products.

product_category: Stores product categories.

product: Contains product details, linked to a brand and category.

product_image: Contains images related to products.

attribute_category: Defines the type of attributes (e.g., Physical, Technical).

attribute_type: Defines specific attributes (e.g., material, weight, etc.) linked to attribute categories.

product_attribute: Stores product attributes with values like material and weight.

# ERD (Entity-Relationship Diagram)
The Entity-Relationship Diagram (ERD) visually represents the database schema, showing how the tables are related. This can be found in the project’s shared resources.

# SQL Script (ecommerce.sql)
The ecommerce.sql file contains the SQL queries used to create and link the database tables, set up foreign key relationships, and insert sample data.

Tables created: brand, product_category, product, product_image, attribute_category, attribute_type, product_attribute.

 # Relationships:

The product table is linked to the brand and product_category tables using foreign keys.

The product_image table is linked to the product table.

The product_attribute table is linked to both the product and attribute_type tables.

# Team Roles & Contributions
The team has divided the project into clear sections, each focusing on a specific aspect of the database:

Member 1(Wandile-lab: Focused on designing and implementing product-related tables (e.g., product, brand, category) and handling GitHub management.

Member 2(SisionKitiyio): Focused on variations and sizes, including tables for product items and their relationships to the product table.

Member 3(jacquelene204): Specialized in designing the attribute system (e.g., product attributes like material and weight).


# Project Requirements
This project is part of a group assignment to design an E-commerce database. The main requirements are:

Entity-Relationship Diagram (ERD): Created and merged by all members.

SQL Script: Designed and written to implement the database.

GitHub: Used for version control and collaboration.
