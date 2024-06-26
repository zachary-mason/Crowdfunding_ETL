DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(50),
    description VARCHAR(255),
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(30),
    backers_count INT,
    country VARCHAR(30),
    currency VARCHAR(5),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;