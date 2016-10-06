use mydb;

# display the trip schedule
select 
S.tripDate as 'Trip Date',
T.TripType as 'Trip Name',
concat(L.FirstName, ' ',L.LastName) as 'Trip Leader',
concat(A.FirstName, ' ',A.LastName) as 'Assistant Leader'
	from tripschedule S
    join trips T ON S.TripCode = T.TripCode
    join employeesoag L ON L.EmployeeID = S.LeaderID
    join employeesoag A ON A.EmployeeID = S.AssLeaderID
    order by S.tripDate;
    
    
# list employment history for each employee
select 
concat(E.FirstName, ' ', E.LastName) AS 'Employee Name',
P.JobDescription as 'Job',
H.StartDate as 'Start Date',
H.EndDate as 'End Date'
	from employeesoag E
	join employmenthistory H ON E.EmployeeID = H.EmployeeID
    join jobpositions P ON P.PositionID = H.PositionID;
    
#  List all equipment that is in 'good' condition
select I.InventoryID ,I.EquipmentName, I.Condition 
	from inventory I
    where I.Condition = 'Good';
    
#  List all rentals where the expected return date and the actual return date were the same day
select 
A.agreementdate as 'Date of Agreement',
concat(C.firstname, ' ', C.LastName) as 'Customer Name',
concat(E.firstname, ' ', E.LastName) as 'Employee Name',
I.EquipmentName as 'Rented Equipment',
D.ActualReturnDate as 'Return Date' 
	from rentaldetail D
	join rentalagreement A on D.RentalAgreementID = A.AgreementID
    join customer C on C.CustomerID = A.CustomerRentID
    join employeesoag E on E.EmployeeID = A.EmployeePOSID
    join inventory I on I.InventoryID = D.InventoryID
    where D.ExpectedReturnDate = D.ActualReturnDate;
    

    
    
    
    