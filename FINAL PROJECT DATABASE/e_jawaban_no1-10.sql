use BlueJackJewelry;

/* 1.   Display VendorId, VendorName, StaffName, Total Transation */
Select * from purchase;

/* 2.	Display JewelryTypeName and Total Price */
Select * from jewelryType;
Select * from jewelry where JewelryName		= 'ruby' or JewelryName = 'diamond';

/* 3.	Display Date (obtained from SalesDate in ‘Mon dd, yyyy’ format), CustomerName, Total Jewelry (obtained from the total number of different jewelry bought by customer), and Total Quantity */
Select sales.SalesDate, customer.CustomerName, jewelry.JewelryName, sales.Qty
from sales, customer, jewelry
where sales.CustomerID = customer.CustomerID and sales.JewelryID = jewelry.JewelryID;

/* 4.	Display StaffId, StaffName, JewelryName, Total Jewelry (obtained from the total number of different jewelry purchase by staff), Total Price */
Select purchase.StaffID, staff.StaffName, jewelry.JewelryName, purchase.Qty
from purchase, staff, jewelry
where purchase.StaffID = staff.StaffID and purchase.JewelryID = Jewelry.JewelryID;

/* 5.	Display CustomerName, CustomerEmail, CustomerAddress, JewelryName, and Jewelry Weight (ends with ' gram') */
select customer.CustomerName, customer.CustomerGmail, customer.CustomerAddress, jewelry.JewelryName, sales.Qty
from customer, jewelry, sales
where sales.CustomerID = customer.CustomerID and sales.JewelryID = jewelry.JewelryID
order by customer.CustomerName asc;

/* 6.	Display VendorName, VendorEmail, VendorPhone, JewelryName, Jewelry Price (obtained from JewelryPurchasePrice and ends with ' USD') for every Vendor who sells the Jewelry at minimum JewelryPurchasePrice */
select vendor.VendorName, vendor.VendorEmail, vendor.VendorPhone, jewelry.JewelryName, jewelry.JewelryPrice
from vendor, jewelry, purchase
where purchase.VendorID=vendor.VendorID and purchase.JewelryID=jewelry.JewelryID
order by vendor.VendorName desc;

/* 7.	Display Staff ID (obtained from StaffID and replace 'ST' with 'Staff '), StaffName, JewelryName, Total Price (obtained from the total amount of purchase price times quantity and ends with ' USD') */
select purchase.StaffID, staff.StaffName, jewelry.JewelryName, purchase.Qty
from purchase, staff, jewelry
where purchase.StaffID = staff.StaffID and purchase.JewelryID = jewelry.JewelryID
order by purchase.StaffID asc

/* 8.	Display StaffId, Staff Name (Obtained by StaffName in Uppercase format), SalesId, and Total Price (obtained from the total amount of sales price times quantity and ends with ' USD') */
select sales.StaffID, staff.StaffName, sales.SalesID, sales.Qty
from sales, staff
where sales.StaffID = staff.StaffID
order by sales.Qty desc;

/* 9.	Create a view named [viewStaffSales] to display StaffId, Staff Name (obtained from StaffName in lowercase format), StaffEmail, Total Jewelry Sold (obtained from the total number of different jewelry sold by staff), and Average Quantity  */
create view [viewStaffSales] as 
select sales.StaffID, staff.StaffName, staff.StaffEmail, sales.Qty
from sales, staff
where sales.StaffID = staff.StaffID;
select * from [viewStaffSales];

/* 10.	Create a view named viewVendorPurchase to display VendorId, VendorName, VendorEmail, VendorAddress, Total Jewelry Purchased (obtained from the total number of different jewelry sold by vendor), and Average Quantity */
create view [viewVendorPurchase] as
select purchase.VendorID, vendor.VendorName, vendor.VendorEmail, vendor.VendorAddress, purchase.Qty
from purchase, vendor
where purchase.VendorID = vendor.VendorID;
select * from [viewVendorPurchase]