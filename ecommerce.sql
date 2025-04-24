USE ecommerce_db;

-- BRAND TABLE
CREATE TABLE brand(
brand_id INT PRIMARY KEY AUTO_INCREMENT,
brandName VARCHAR(100) 
);

-- PRODUCT CATEGORY TABLE
CREATE TABLE product_category(
product_category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(100)
);

-- PRODUCT TABLE
CREATE TABLE product(
product_id INT PRIMARY KEY AUTO_INCREMENT,
productName VARCHAR(100),
brand_id INT,
category_id INT,
base_price DECIMAL(10,2), 
FOREIGN KEY (category_id) REFERENCES product_category(product_category_id), 
FOREIGN KEY(brand_id) REFERENCES brand(brand_id)
);

-- PRODUCT IMAGE TABLE
CREATE TABLE product_image(
product_image_id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
image_url VARCHAR(200),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);




