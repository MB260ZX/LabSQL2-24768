Select*from Employees


Select ProductID,ProductName,unitPrice, UnitsInStock ,UnitPrice*UnitsInStock As stockValue from Products

select ProductID as ����,ProductName as �Թ���, UnitsInStock+unitsOnOrder as �ӹǹ�Թ��Ҥ������,ReorderLevel as �ش��觫��� 
from Products where (UnitsInStock+unitsOnOrder)<ReorderLevel

select ProductID,ProductName,UnitPrice,ROUND(UnitPrice*0.07,2)AS Vat7 from Products

select EmployeeID,Titleofocourtesy+firstname+space(1)+lastname as [Employee Name]
from Employees

select orderID, ProductID, UnitPrice,Quantity,Discount,
round(UnitPrice * Quantity * (1-Discount),2) as NetPrice
from [Order Details]
where orderID = 10250

select count(*) as �ӹǹ�Թ��� from Products where UnitsInStock<15

select count(*) from Employees

select count(*)from Customers where country ='Brail'

Select count(*) from [Order Details] where OrderID = 10250

Select count(*) from Orders where ShipCountry = 'Japan'
 
select min(unitprice) as �Ҥ� ,max(unitprice) as �Ҥ��٧�ش,
	AVG(unitprice)as �Ҥ������o
from products 

select min(unitprice) as �Ҥ� ,max(unitprice) as �Ҥ��٧�ش,
	AVG(unitprice)as �Ҥ������
from [Order Details] where ProductID = 5

select cosntry ,count(*)as[Num of countr]

select country ,count(*) as �ӹǹ�١���
from Customers 
group by Country
order by [�ӹǹ�١���] desc

select country,City ,count(*) as �ӹǹ�١���
from Customers 
group by Country,City
order by [�ӹǹ�١���] desc

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

select ProductID,sum(quantity)as �ӹǹ�������, min(unitprice) as �Ҥ� ,max(unitprice) as �Ҥ��٧�ش,
	AVG(unitprice)as �Ҥ������
from [Order Details]
group by ProductID
order by ProductID

select orderID,sum(UnitPrice * Quantity * (1-Discount)) as NetPrice
from [Order Details]
group by OrderID
