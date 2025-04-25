CREATE database ecommerce_db;
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


CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    attribute_category_id INT,
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id)
);



CREATE TABLE product_attribute (
    product_id INT,
    attribute_type_id INT,
    value VARCHAR(100),
    PRIMARY KEY (product_id, attribute_type_id)
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
); 
INSERT INTO attribute_category (name) VALUES 
('Physical'), 
('Technical');

INSERT INTO attribute_type (name, attribute_category_id) VALUES
('Material', 1),
('Weight', 1),
('Battery Life', 2);
 
 INSERT INTO product_attribute (product_id, attribute_type_id, value)
VALUES (2, 1, 'Cotton');

INSERT INTO product (product_name) VALUES ('Basic T-shirt');

INSERT INTO size_category (category_name) VALUES ('Clothing');

INSERT INTO size_option (size_label, category_id) VALUES ('S', 1), ('M', 1), ('L', 1);

INSERT INTO color (color_name) VALUES ('Red'), ('Blue');

INSERT INTO product_variation (product_id, variation_name)
VALUES (1, 'Basic T-shirt Unisex');

INSERT INTO product_item (variation_id, color_id, size_id, sku_code, stock_qty)
VALUES (1, 1, 3, 'TSHIRT-RED-L', 100);
