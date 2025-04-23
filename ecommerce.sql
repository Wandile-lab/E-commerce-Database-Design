
CREATE database ecommerce_db;
USE ecommerce_db;

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
    -- FOREIGN KEY (product_id) REFERENCES products(product_id),
    -- FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
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

SELECT * FROM attribute_category;
SELECT * FROM attribute_type;
-- SELECT * FROM product_attribute;
-- SELECT * FROM products WHERE product_id = 2;
