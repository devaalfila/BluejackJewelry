use BlueJackJewelry;

/* Insert Data into Jewelry */
insert into jewelry values
('JW001', 'JT001', 'Gold', '1000', '4500000', '100'),
('JW002', 'JT001', 'Diamond', '1000', '4500000', '100'),
('JW003', 'JT002', 'Pearl', '1000', '4500000', '100'),
('JW004', 'JT002', 'Ruby', '1000', '4500000', '100'),
('JW005', 'JT003', 'Black Diamond', '1000', '4500000', '100'),
('JW006', 'JT003', 'Silver', '1000', '4500000', '100'),
('JW007', 'JT004', 'Bronze', '1000', '4500000', '100'),
('JW008', 'JT004', 'White Gold', '1000', '4500000', '100'),
('JW009', 'JT005', 'Green Ruby', '1000', '4500000', '100'),
('JW010', 'JT005', 'Blue Ruby', '1000', '4500000', '100');

/* Insert Data into Jewelry Type */
insert into jewelryType values
('JT001', 'Type 1'),
('JT002', 'Type 2'),
('JT003', 'Type 3'),
('JT004', 'Type 4'),
('JT005', 'Type 5');

/* Insert Data into Vendor */
insert into vendor values
('VE001', 'Vendor 1', 'vendor1@ve.com', 'Jl No. 1 Bandung Street', '08220000001'),
('VE002', 'Vendor 2', 'vendor2@ve.com', 'Jl No. 2 Jakarta Street', '08220000002'),
('VE003', 'Vendor 3', 'vendor3@ve.com', 'Jl No. 3 Surabaya Street', '08220000003');

/* Insert Data into Customer */
insert into customer values
('CU001', 'Customer 1', 'Male', 'Customer1@gmail.com', 'Bandung', '08230000001'),
('CU002', 'Customer 2', 'Male', 'Customer2@gmail.com', 'Jakarta', '08230000001'),
('CU003', 'Customer 3', 'Female', 'Customer3@gmail.com', 'Surabaya', '08230000001');

/* Insert Data into Staff */
insert into staff values
('ST001', 'Staff 1', 'Female', '08110000008', 'Staff1@st.com', 'Bandung'),
('ST002', 'Staff 2', 'Female', '08120000008', 'Staff2@st.com', 'Bandung'),
('ST003', 'Staff 3', 'Male', '08130000008', 'Staff3@st.com', 'Bandung');
