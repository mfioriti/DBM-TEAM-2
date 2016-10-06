use mydb;
/*
delete from Customer where CustomerID >=1;
ALTER TABLE Customer AUTO_INCREMENT = 1;

delete from jobpositions where PositionID >=1;
ALTER TABLE jobpositions AUTO_INCREMENT = 1;
*/

##Customer ID

INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Burton','Minter','123 Arbor Lane Somewhere, TN 12345','800-123-4562','','','Alumni');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Meryl','Flower','345 Birch Tree Ct A-Place, NY 12345','800-123-4563','','','Student');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Ignacio','Garcia','678 Cedar Park, Williamsburg, VA 12345','800-123-4565','','','Faculty');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Garrett','McGuinness','901 Dogwood Rd, Alrington, VA 12345','800-123-4567','','','Student');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType, SponsorID) Values('Winston','Ironhorse','1 Terrible St, London, UK', '900-555-5555','','','Guest',4);
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Jebus','McChrist-Superstar','45 Church Rd, Bethlehem, PA, 11111', '543-131-0679','111-111-1111','0000-12-25','Alumni');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Gary','Oak','101 Nerdtown Rd, Route 15, 15167','555-555-5555','456-123-7894', '2001-07-04','Faculty');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType, SponsorID) Values('Abraham','Lincoln', '1600 Penn Ave NW, Washington, DC 20036','987-568-7894','789-458-6547','2004-06-24','Guest',1);
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Thomas', 'Jefferson', '1 Montecello Lane, Williamsburg, VA 12334', '800-789-4865','456-8019','1736-07-04','Alumni');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Rock', 'Star', '30 Somewhere Lane, Somewhere, CA 11111','610-345-2450','345-321-4156','1987-02-10','Student');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Mario','Plumber','4 Peach Castle, Mushroom Kingdom, Italy', '555-555-5555','159-489-3547','1984-06-16','Faculty');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType, SponsorID) Values('Luigi', 'Plumber', '5 Rainbow Rd, Mushroom Kingdom, Japan', '489-456-7894','159-489-3547','1984-06-16','Guest',11);
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Peach','Toadstool','4 Peach Castle, Mushroom Kingdom, Italy', '555-555-5555','159-489-3547','1984-06-16','Alumni');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) Values('Maggie','Smith','4001 Farm Lane, Somewhere, NY 12345','303-102-8756','','1967-03-15','Student');
INSERT INTO Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType, SponsorID) Values('Kim','Possible','601 Future Lane New York New York 11111','','','1998-10-31','Guest',7);
insert into Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) values ('Gloria', 'Olson', '68746 Gulseth Pass, Somewhere CO, 11234', '865-291-8071', '116-834-9573', '1994-06-23', 'Faculty');
insert into Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) values ('Carl', 'Burns', '4 Garrison Place, Somewhere CO, 11234', '869-533-4308', '', '2012-01-25', 'Faculty');
insert into Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) values ('Jane', 'Fowler', '7264 Atwood Circle, Springfield VA, 23105', '970-789-7165', '', '1974-07-17', 'Student');
insert into Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) values ('Ann', 'Tucker', '572 Gateway Plaza, Somewhere VA, 11234', '335-555-9941', '568-507-9990', '1985-04-26', 'Alumni');
insert into Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) values ('Jimmy', 'Taylor', '2112 Animal Crossing, Phoenix AZ, 11234', '381-657-1605', '913-361-8093', '2005-08-24', 'Alumni');
insert into Customer (FirstName, LastName, Address, HomePhone, WorkPhone, DoB, CustomerType) values ('Richard', 'Rose', '6009 Annamark Crossing, Austin TX, 11234', '318-436-3021', '485-772-1835', '2015-03-19', 'Faculty');

#EMPLOYEESOAG
use mydb;
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1000', 'Jane', 'Austen', '112 Northanger Abbey Lane', '(888) 987 - 2345', '(800) 967 - 2315', '09/22/1979');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1001', 'Lizzie', 'Bennett', '14 Pemberly Lane', '(888) 987 - 2345', '(800) 034 - 2215', '03/15/1825');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1002', 'Lidia', 'Bennett', '14 Pemberly Lane', '(888) 787 - 6845', '(800) 967 - 2315', '05/11/1839');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1003', 'George', 'Whickham', '2 Disgrace Drive', '(858) 787 - 6845', '(820) 667 - 7985', '08/17/1819');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1004', 'Fitzwilliam', 'Darcy', '14 Pemberly Lane', '(888) 987 - 6845', '(800) 967 - 2315', '06/09/1820');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1005', 'Kitty', 'Bennett', '33 Pemberly Lane', '(888) 787 - 6845', '(800) 967 - 2315', '09/23/1834');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1006', 'Charlotte', 'Lucas', '21 Manorside Park', '(958) 267 - 6765', '(820) 777 - 7777', '11/21/1822');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1007', 'William', 'Collins', '22 Manorside Park', '(958) 795 - 6845', '(800) 907 - 8815', '05/11/1819');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1008', 'Charles', 'Bingley', '19 Pemberly Lane', '(888) 787 - 6845', '(800) 967 - 2315', '08/05.1822');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1009', 'Sarah', 'King', '12 Regret Lane', '(865) 700 - 6345', '(802) 937 - 0075', '05/19/1844');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1010', 'William', 'Lucas', '99 Regret Lane', '(865) 710 - 8545', '(802) 947 - 0075', '05/23/1792');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1011', 'Caroline', 'Bingley', '13 Lilith Drive', '(899) 720 - 6995', '(802) 987 - 0065', '12/19/1822');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1012', 'Georgiana', 'Darcy', '12 Sweetheart Lane', '(809) 720 - 6765', '(809) 982 - 0995', '12/19/1840');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1013', 'Caroline', 'Bingley', '13 Lilith Drive', '(899) 720 - 6995', '(802) 987 - 0065', '12/19/1822');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1014', 'Marianne', 'Dashwood', '18 Darbyshire Drive', '(809) 220 - 7795', '(819) 927 - 3365', '12/19/1833');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1015', 'Henry', 'Crawford', '33 England Street', '(669) 460 - 6905', '(822) 447 - 1065', '12/19/1820');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1016', 'Fanny', 'Price', '16 London Lane', '(993) 880 - 6335', '(892) 287 - 1165', '12/19/1819');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1017', 'Robert', 'Ferrars', '17 Big Ben Way', '(899) 720 - 6995', '(802) 987 - 0065', '12/19/1816');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1018', 'Augusta', 'Elton', '6 John Way', '(779) 990 - 2295', '(834) 787 - 1165', '07/22/1889');
INSERT INTO `employeesoag` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `HomePhone`, `WorkPhone`, `DoB`) VALUES ('1019', 'Mary', 'Bennett', '1 Lonely Way', '(899) 720 - 6995', '(802) 987 - 9965', '2/19/1835');

#####Trips#####
use mydb;

insert into trips (TripType, Difficulty, TripFee, TripLength) values('Rock Climbing1', 'Beginner', '$25', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('WhiteWater Rafting, Nantahala', 'Intermediate', '$75', '2 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Backpacking, Local Area', 'Intermediate', '$7', '2 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Tubing, James River', 'Beginner', '$5', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Cycling, Capitol Trail', 'Beginner', '$0', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Canoeing/kayaking James River', 'Beginner', '$0', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Ropes Course1', 'Beginner', '$0', '.5 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Ropes Course2', 'Intermediate', '$10', '.5 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Ropes Course3', 'Advanced', '$20', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Rock Climbing2', 'Intermediate', '$25', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Rock Climbing3', 'Advanced', '$25', '1.5 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Backpacking, App Trail', 'Advanced', '$100', '3 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('WhiteWater Rafting, Ocoee', 'Intermediate', '$75', '2 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Cycling, W&M Tour', 'Beginner', '$0', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Fishing, Lake Matoaka', 'Beginner', '$5', '.5 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Fishing, James River', 'Intermediate', '$20', '1 day'); 
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Fishing, Chesapeake Bay', 'Advanced', '$50', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Capture the flag', 'Beginner', '$0', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Hide & Go seek', 'Beginner', '$0', '1 day');
insert into trips (TripType, Difficulty, TripFee, TripLength) values('Mud Run', 'Intermediate', '$10', '.5 day');

###TripsSchedule###
use mydb;
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '2', '2016-09-17' , '1004','1002');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '9', '2016-10-27' , '1007','1012');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '10', '2016-11-17' , '1019','1011');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '11', '2017-12-30' , '1014','1018');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '19', '2017-01-22' , '1006','1007');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '12', '2016-02-08' , '1013','1011');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '14', '2016-11-07' , '1014','1019');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '13', '2016-11-23' , '1008','1012');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '17', '2017-02-28' , '1018','1015');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '6', '2017-03-09' , '1007','1003');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '8', '2017-05-19' , '1016','1002');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '9', '2017-03-12' , '1013','1004');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '14', '2019-09-17' , '1016','1012');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '9', '2010-09-17' , '1004','1002');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '15', '2016-11-12' , '1011','1018');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '8', '2016-11-08' , '1011','1017');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '17', '2016-11-24' , '1019','1014');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '7', '2018-09-30' , '1015','1011');
insert into tripschedule (TripCode,tripDate,LeaderID,AssLeaderID) values ('8', '2016-11-08', '1011','1017');
INSERT INTO `tripschedule` ( `TripCode`, `tripDate`, `LeaderID`, `AssLeaderID`) VALUES ( '12', '2016-02-08' , '1013','1011');

##SignUps##
use mydb;
#signups
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('1','1','3');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('2','0','10');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('3','1','5');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('4','0','8');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('5','0','2');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('6','0','1');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('7','1','6');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('8','0','12');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('9','1','13');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('10','0','14');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('11','1','16');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('12','0','19');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('13','1','15');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('14','0','18');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('15','1','7');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('16','1','11');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('17','1','13');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('18','1','3');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('19','0','3');
INSERT INTO `signups` (CustomerID,InsWaiver,TripScheduleID) VALUES ('20','1','19');

###Equipment type
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Rock Climbing Kit',0.00, 2.00, 4.00, 6.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Backpack', 0.00, 3.00, 5.00, 7.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Tent', 5.00, 6.00, 7.00, 8.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Cooler', 0.00, 2.00, 3.00, 4.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Bike', 5.00,7.00,8.00,10.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Sleeping Bag', 0.00, 2.00, 4.00, 5.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Corn Hole', 0.00, 2.00,3.00,4.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Cooking Kit', 5.00, 6.00, 6.00, 7.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Sleeping Pad', 0.00, 1.00, 1.00, 2.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Camping Chairs', 0.00,2.00,3.00,4.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Hammock', 2.00,2.00,2.00,3.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Hanging Tent', 10.00,10.00,10.00,10.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Kayak', 5.00, 6.00, 7.00, 8.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Life Vest', 0.00,1.00,2.00,3.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Fishing Rod', 2.00, 3.00, 4.00, 5.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Flag Football Kit', 3.00,4.00,5.00,6.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Capture the Flag Kit', 0.00, 2.00, 2.00, 2.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Field Lining Set', 2.00, 3.00, 3.00, 4.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('Beach Volleyball Kit', 3.00,3.00,3.00,4.00);
insert into equipmenttype (EquipmentName, StudentFee, FacultyFee, AlumniFee, GuestFee) values ('First Aid Kit', 0.00, 0.00, 0.00, 0.00);


###Inventory###

insert into Inventory (InventoryID, EquipmentName, `Condition`) values('1', 'Rock Climbing Kit', 'Good');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('2', 'Backpack', 'Fair');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('3', 'Tent', 'Fair');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('4', 'Cooler', 'Good');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('5', 'Bike', 'Good');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('6', 'Sleeping Bag', 'Good');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('7', 'Corn Hole', 'Fair');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('8', 'Cooking Kit', 'Poor');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('9', 'Sleeping Pad', 'Poor');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('10', 'Camping Chairs', 'Poor');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('11', 'Hammock', 'Fair');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('12', 'Hanging Tent', 'Fair');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('13', 'Kayak', 'Good');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('14', 'Life Vest', 'Fair');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('15', 'Fishing Rod', 'Poor');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('16', 'Flag Football Kit', 'Good');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('17', 'Capture the Flag Kit', 'Good');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('18', 'Field Lining Set', 'Fair');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('19', 'Beach Volleyball Kit', 'Poor');
insert into Inventory (InventoryID, EquipmentName, `Condition`) values('20', 'First Aid Kit', 'Good');

use mydb;

####
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-09-17', '2', '3');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-10-27', '3', '6');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-11-17', '18', '4');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-01-21', '18', '4');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-12-29', '2', '3');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-10-27', '15', '6');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-11-07', '14', '4');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-11-13', '5', '6');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-02-31', '9', '3');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-03-09', '15', '6');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-05-19', '14', '4');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-03-15', '5', '6');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2015-01-17', '20', '14');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-10-27', '19', '6');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-11-07', '16', '4');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2016-11-13', '17', '6');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-02-31', '10', '5');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-03-09', '4', '10');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-05-19', '7', '11');
insert into rentalagreement (AgreementDate, CustomerRentID, EmployeePOSID) values('2017-03-15', '8', '12');

####
use mydb;
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('1', '2015-05-25', '2015-05-26', '2015-05-27', '1');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('2', '2016-03-02', '2016-03-04', '2016-03-04', '2');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('3', '2015-02-25', '2015-02-26', '2015-02-27', '3');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('4', '2014-06-25', '2014-06-26', '2014-06-27', '4');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('5', '2015-01-05', '2015-01-06', '2015-01-06', '5');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('6', '2015-05-25', '2015-05-26', '2015-05-27', '6');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('7', '2016-09-25', '2016-09-26', '2016-09-27', '7');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('8', '2016-10-01', '2016-10-03', '2016-10-03', '8');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('9', '2014-04-04', '2014-04-05', '2014-04-27', '9');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('10', '2016-01-27', '2016-01-28', '2016-01-27', '10');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('11', '2015-06-16', '2015-06-17', '2015-06-17', '11');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('12', '2015-02-15', '2015-02-16', '2015-02-17', '12');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('13', '2015-07-03', '2015-07-05', '2015-07-05', '13');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('14', '2016-08-01', '2016-08-02', '2016-08-02', '14');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('15', '2016-09-05', '2016-09-06', '2016-09-06', '15');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('16', '2015-10-25', '2015-10-26', '2015-10-26', '16');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('17', '2016-11-14', '2016-11-16', '2016-11-16', '17');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('18', '2016-12-24', '2016-12-26', '2016-12-27', '18');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('19', '2016-05-01', '2016-05-03', '2016-05-03', '19');
INSERT INTO `rentaldetail` (RentalAgreementID, CheckoutDate, ExpectedReturnDate, ActualReturnDate, InventoryID) VALUES ('20', '2016-08-06', '2016-08-08', '2016-08-08', '20');


###
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1000, 20, '1993-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1001, 19, '2000-11-08', '2001-11-08');
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1002, 18, '2005-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1003, 17, '2010-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1004, 16, '2015-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1005, 15, '2001-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1006, 14, '2006-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1007, 13, '2011-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1008, 12, '2015-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1009, 11, '1998-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1010, 10, '1996-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1011, 9, '2013-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1012, 8, '2002-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1013, 7, '2008-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1014, 6, '1999-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1015, 5, '2013-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1016, 4, '2014-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1017, 3, '2007-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1018, 2, '2006-11-08', Null);
insert into employmenthistory (EmployeeID, PositionID, StartDate, EndDate) values ( 1019, 1, '2009-11-08', Null);

insert into jobpositions (JobDescription) values ('Fishing Guide');
insert into jobpositions (JobDescription) values ('Hiking Guide');
insert into jobpositions (JobDescription) values ('Rental Staff');
insert into jobpositions (JobDescription) values ('Ropes Course Instructor');
insert into jobpositions (JobDescription) values ('White Water Rafting Guide');
insert into jobpositions (JobDescription) values ('Rock Climbing Instructor');
insert into jobpositions (JobDescription) values ('Manager');
insert into jobpositions (JobDescription) values ('Administrative Staff');
insert into jobpositions (JobDescription) values ('Janitor');
insert into jobpositions (JobDescription) values ('First Aid Instructor');
insert into jobpositions (JobDescription) values ('Equipment Manager');
insert into jobpositions (JobDescription) values ('Student Assistant');
insert into jobpositions (JobDescription) values ('Chief Operating Officer');
insert into jobpositions (JobDescription) values ('Vehicle Operator');
insert into jobpositions (JobDescription) values ('Accountant');
insert into jobpositions (JobDescription) values ('Camping Trip Guide');
insert into jobpositions (JobDescription) values ('Canoe/Kayak Instructor');
insert into jobpositions (JobDescription) values ('Front Desk Staff');
insert into jobpositions (JobDescription) values ('Intern');
insert into jobpositions (JobDescription) values ('Security Guard');