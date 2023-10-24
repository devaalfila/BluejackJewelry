create database BlueJackJewelry;
Use BlueJackJewelry;

/* Create staff table */
create table staff (StaffID char(5) Primary Key Check (StaffID LIKE 'ST%'),StaffName varchar(225), StaffGender varchar(6), StaffPhone char(12) check (StaffPhone like '%08'), StaffEmail varchar(225) check (StaffEmail like '%st.com'), StaffAddress varchar(225));

/* Create purchase table */
create table purchase (PurchaseID char(5) Primary Key Check (PurchaseID LIKE 'PU%'), VendorID char(5) check (VendorID LIKE 'VE%'), StaffID char(5) check (StaffID LIKE 'ST%'), JewelryID char(5) check (JewelryID like 'JW%'), Qty int, PurchaseDate Date);

/* Create sales table */
create table sales (SalesID char(5) Primary Key Check (SalesID Like 'SL%'), StaffID char(5) check (StaffID LIKE 'ST%'), CustomerID char(5) check (CustomerID LIKE 'CU%'), JewelryID char(5) check (JewelryID like 'JW%'), Qty int, SalesDate Date);

/* Create jewelry table */
create table jewelry (JewelryID char(5) Primary Key check (JewelryID like 'JW%'), JewelryTypeID char(5) check (JewelryTypeID like 'JT%'), JewelryName varchar(225), JewelryWeight int, JewelryPrice int, JewelryStock int);

/* Create jewelry Type table */
create table jewelryType (JewelryTypeID char(5) Primary Key check (JewelryTypeID like 'JT%'), JewelryTypeName varchar(40));

/* Create customer table */
create table customer (CustomerID char(5) Primary Key check (CustomerID LIKE 'CU%'), CustomerName varchar(225), CustomerGender char(6), CustomerGmail varchar(225) check (CustomerGmail like '%gmail.com'), CustomerAddress varchar(225), CustomerPhone char(12) check (CustomerPhone Like '08%'));

/* Create vendor table */
create table vendor (VendorID char(5) Primary Key check (VendorID like 'VE%'), VendorName varchar(225), VendorEmail varchar(225) check (VendorEmail like '%ve.com'), VendorAddress varchar (225) check (VendorAddress like '%Street'), VendorPhone char (12) check (VendorPhone like '08%'));

/* Create Master table */
create table mastertable (MasterID char(5) Primary Key Check (MasterID like 'MA%'), PurchaseID char(5) check (PurchaseID LIKE 'PU%'), VendorID char(5) check (VendorID LIKE 'VE%'), SalesID char(5) Check (SalesID Like 'SL%'), StaffID char(5) check (StaffID LIKE 'ST%'), CustomerID char(5) check (CustomerID LIKE 'CU%'), JewelryID char(5) check (JewelryID like 'JW%'), Qty int, TransactionDate Date);

/* Add Foreign Key in purchase table */
alter table purchase add foreign key (VendorID) references vendor(VendorID);
alter table purchase add foreign key (StaffID) references staff(StaffID);
alter table purchase add foreign key (JewelryID) references jewelry(JewelryID);

/* Add Foreign Key in sales table */
alter table sales add foreign key (StaffID) references staff(StaffID);
alter table sales add foreign key (CustomerID) references customer(CustomerID);
alter table sales add foreign key (JewelryID) references jewelry(JewelryID);

/* Add Foreign Key in jewelry table */
alter table jewelry add foreign key (JewelryTypeID) references jewelryType(JewelryTypeID);