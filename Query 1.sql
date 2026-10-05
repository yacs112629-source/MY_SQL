-- Create database
CREATE DATABASE YS;
USE YS;

-- Categories
CREATE TABLE categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50)
);

INSERT INTO categories (CategoryName) VALUES
('Makeup'),
('Skin Care');

-- Coupons
CREATE TABLE coupons (
    CouponID INT PRIMARY KEY AUTO_INCREMENT,
    CouponCode VARCHAR(20),
    DiscountPercent INT,
    ExpiryDate DATE
);

INSERT INTO coupons (CouponCode, DiscountPercent, ExpiryDate) VALUES
('BEAUTY10', 10, '2026-12-31'),
('SKIN20', 20, '2026-11-30'),
('FESTIVE15', 15, '2026-10-31');

-- Customers
CREATE TABLE customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50)
);

INSERT INTO customers (Name, Email, Phone, City) VALUES
('Rahul Sharma','rahul@gmail.com','9876543210','Delhi'),
('Priya Singh','priya@gmail.com','9876543211','Mumbai'),
('Amit Verma','amit@gmail.com','9876543212','Lucknow'),
('Sneha Gupta','sneha@gmail.com','9876543213','Jaipur'),
('Rohan Mehta','rohan@gmail.com','9876543214','Chennai'),
('Kavita Joshi','kavita@gmail.com','9876543215','Pune'),
('Deepak Yadav','deepak@gmail.com','9876543216','Agra'),
('Neha Patel','neha@gmail.com','9876543217','Surat'),
('Arjun Kumar','arjun@gmail.com','9876543218','Bhopal'),
('Meera Nair','meera@gmail.com','9876543219','Kochi'),
('Vikas Jain','vikas@gmail.com','9876543220','Indore'),
('Ritu Malhotra','ritu@gmail.com','9876543221','Noida'),
('Sanjay Rao','sanjay@gmail.com','9876543222','Hyderabad'),
('Anjali Das','anjali@gmail.com','9876543223','Kolkata'),
('Manish Tiwari','manish@gmail.com','9876543224','Varanasi'),
('Pooja Bansal','pooja@gmail.com','9876543225','Nagpur'),
('Rakesh Kumar','rakesh@gmail.com','9876543226','Patna'),
('Divya Chauhan','divya@gmail.com','9876543227','Gurgaon'),
('Nitin Sinha','nitin@gmail.com','9876543228','Kanpur'),
('Tanya Kapoor','tanya@gmail.com','9876543229','Ahmedabad');

-- Employees
CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50)
);

INSERT INTO employees (Name, Role, Salary, City) VALUES
('Ravi Sharma','Manager',65000,'Delhi'),
('Anita Verma','HR',45000,'Mumbai'),
('Suresh Kumar','Sales Executive',30000,'Lucknow'),
('Poonam Singh','Accountant',40000,'Jaipur'),
('Vivek Mehta','IT Support',35000,'Chennai'),
('Kiran Patel','Marketing Lead',50000,'Pune'),
('Rajesh Yadav','Warehouse Supervisor',32000,'Agra'),
('Simran Kaur','Customer Support',28000,'Surat'),
('Mohit Jain','Delivery Coordinator',27000,'Bhopal'),
('Asha Nair','Admin Assistant',25000,'Kochi');

-- Delivery Partners
CREATE TABLE delivery_partners (
    PartnerID INT PRIMARY KEY AUTO_INCREMENT,
    PartnerName VARCHAR(100),
    ContactNumber VARCHAR(15),
    VehicleType VARCHAR(50)
);

INSERT INTO delivery_partners (PartnerName, ContactNumber, VehicleType) VALUES
('BlueDart Express','9876500001','Van'),
('Delhivery Logistics','9876500002','Truck'),
('Ecom Express','9876500003','Bike'),
('Shadowfax','9876500004','Scooter'),
('DTDC Courier','9876500005','Van');

-- Warehouses
CREATE TABLE warehouses (
    WarehouseID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(100),
    Capacity INT
);

INSERT INTO warehouses (Location, Capacity) VALUES
('Delhi Central Warehouse',5000),
('Mumbai Distribution Hub',4000),
('Chennai Storage Unit',3000),
('Kolkata Depot',3500),
('Pune Fulfillment Center',4500);

-- Suppliers
CREATE TABLE suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    SupplierName VARCHAR(100),
    Contact VARCHAR(15),
    City VARCHAR(50)
);

INSERT INTO suppliers (SupplierName, Contact, City) VALUES
('Lotus Cosmetics','9876511111','Delhi'),
('Lakme Ltd.','9876511112','Mumbai'),
('Biotique Naturals','9876511113','Pune'),
('Mamaearth Pvt Ltd.','9876511114','Gurgaon'),
('Nykaa Retail','9876511115','Bangalore');

-- Products
CREATE TABLE products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO products (ProductName, CategoryID, Price, Stock) VALUES
('Lakme Lipstick',1,499.00,120),
('Biotique Face Cream',2,299.00,200),
('Mamaearth Sunscreen',2,349.00,150),
('Lotus Kajal',1,199.00,180),
('Nykaa Foundation',1,799.00,100);

-- Inventory
CREATE TABLE inventory (
    InventoryID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    Quantity INT,
    LastUpdated DATE
);

INSERT INTO inventory (ProductID, Quantity, LastUpdated) VALUES
(1,120,'2026-10-05'),
(2,200,'2026-10-05'),
(3,150,'2026-10-05'),
(4,180,'2026-10-05'),
(5,100,'2026-10-05');

-- Orders
CREATE TABLE orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    Status VARCHAR(50)
);

INSERT INTO orders (CustomerID, OrderDate, TotalAmount, Status) VALUES
(1,'2026-10-01',998.00,'Delivered'),
(2,'2026-10-02',199.00,'Shipped'),
(3,'2026-10-03',698.00,'Processing'),
(4,'2026-10-04',299.00,'Delivered'),
(5,'2026-10-05',799.00,'Pending');

-- Order Items
CREATE TABLE order_items (
    OrderItemID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2)
);

INSERT INTO order_items (OrderID, ProductID, Quantity, Price) VALUES
(1,1,2,998.00),
(2,4,1,199.00),
(3,3,2,698.00),
(4,2,1,299.00),
(5,5,1,799.00);

-- Payments
CREATE TABLE payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10,2),
    PaymentDate DATE
);

INSERT INTO payments (OrderID, PaymentMethod, Amount, PaymentDate) VALUES
(1,'Credit Card',998.00,'2026-10-01'),
(2,'UPI',199.00,'2026-10-02'),
(3,'Debit Card',698.00,'2026-10-03'),
(4,'Cash on Delivery',299.00,'2026-10-04'),
(5,'Credit Card',799.00,'2026-10-05');

-- Returns
CREATE TABLE returns (
    ReturnID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Reason VARCHAR(255),
    ReturnDate DATE
);

INSERT INTO returns (OrderID, ProductID, Reason, ReturnDate) VALUES
(2,4,'Damaged packaging','2026-10-03'),
(3,3,'Wrong item delivered','2026-10-04');

-- Reviews
CREATE TABLE reviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    CustomerID INT,
    Rating INT,
    Comment VARCHAR(255)
);

INSERT INTO reviews (ProductID, CustomerID, Rating, Comment) VALUES
(1,1,5,'Amazing color and texture!'),
(2,2,4,'Good cream, smooth skin feel.'),
(3,3,3,'Average sunscreen, bit oily.'),
(4,4,5,'Perfect kajal, lasts long.'),
(5,5,4,'Nice coverage, worth the price.');




