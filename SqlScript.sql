create table Groups
(
	Id INT not null,
	[Group] nvarchar(50) not null
)
INSERT INTO Groups values(1, 'Fruits') 
INSERT INTO Groups values(2, 'Cars') 

create table Products
(
	Id INT not null,
	[Name] nvarchar(50) not null,
	[Group] nvarchar(50)
)
INSERT INTO Products values(1, 'Banana','Fruits') 
INSERT INTO Products values(2, 'Orange','Fruits') 
INSERT INTO Products values(3, 'Lemon','Fruits') 
INSERT INTO Products values(4, 'Dog', null) 
INSERT INTO Products values(5, 'Cat', null) 
INSERT INTO Products values(6, 'BMW','Cars') 
INSERT INTO Products values(7, 'Volvo','Cars') 
INSERT INTO Products values(8, 'Toyota','Cars') 
INSERT INTO Products values(9, 'Honda','Cars') 

select p.id, p.Name , p.[Group] from Products p
left join Groups g 
on p.[Group] = g.[Group] 
where p.[Group] = 'Fruits' or p.[Group] is null

drop table Products
drop table Groups