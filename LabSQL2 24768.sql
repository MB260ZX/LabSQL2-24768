Select*from Employees


Select ProductID,ProductName,unitPrice, UnitsInStock ,UnitPrice*UnitsInStock As stockValue from Products

select ProductID as รหัส,ProductName as สินค้า, UnitsInStock+unitsOnOrder as จำนวนสินค้าคงเหลือ,ReorderLevel as จุดสั่งซื่อ 
from Products where (UnitsInStock+unitsOnOrder)<ReorderLevel

select ProductID,ProductName,UnitPrice,ROUND(UnitPrice*0.07,2)AS Vat7 from Products

select EmployeeID,Titleofocourtesy+firstname+space(1)+lastname as [Employee Name]
from Employees

select orderID, ProductID, UnitPrice,Quantity,Discount,
round(UnitPrice * Quantity * (1-Discount),2) as NetPrice
from [Order Details]
where orderID = 10250

select count(*) as จำนวนสินค้า from Products where UnitsInStock<15

select count(*) from Employees

select count(*)from Customers where country ='Brail'

Select count(*) from [Order Details] where OrderID = 10250

Select count(*) from Orders where ShipCountry = 'Japan'
 
select min(unitprice) as ราคา ,max(unitprice) as ราคาสูงสุด,
	AVG(unitprice)as ราคาเฉลี่ยo
from products 

select min(unitprice) as ราคา ,max(unitprice) as ราคาสูงสุด,
	AVG(unitprice)as ราคาเฉลี่ย
from [Order Details] where ProductID = 5

select cosntry ,count(*)as[Num of countr]

select country ,count(*) as จำนวนลูกค้า
from Customers 
group by Country
order by [จำนวนลูกค้า] desc

select country,City ,count(*) as จำนวนลูกค้า
from Customers 
group by Country,City
order by [จำนวนลูกค้า] desc

select shipcountry , count(*) 
from Orders 
group by ShipCountry

select country,count(*)
from Customers 
group by Country
having count(*) <5

select shipcountry,count(*)
from Orders
group by shipcountry
having count(*) <100

select shipcountry, count(*)
from Orders
where YEAR(OrderDate)=1997
group by shipcountry
HAVING count(*)<5

select ProductID,sum(quantity)as จำนวนที่ขายได้, min(unitprice) as ราคา ,max(unitprice) as ราคาสูงสุด,
	AVG(unitprice)as ราคาเฉลี่ย
from [Order Details]
group by ProductID
order by ProductID

select orderID,sum(UnitPrice * Quantity * (1-Discount)) as NetPrice
from [Order Details]
group by OrderID
