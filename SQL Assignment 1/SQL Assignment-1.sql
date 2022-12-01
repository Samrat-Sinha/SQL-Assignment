1.  Select the names of all the products in the store.

=>  select name from Products;

2.  Select the names and the prices of all the products in the store.

=>  select name, price from Products;

3.  Select the name of the products with a price less than or equal to $200.

=>  select name from Products where price<=200;

4.  Select all the products with a price between $60 and $120.

=>  select * from Products where price between 60 and 120;

5.  Select the name and price in cents (i.e., the price must be multiplied by 100).

=>  select name,price*100 from Products;

6.  Compute the average price of all the products.

=>  select AVG(price) from products;

7.  Compute the average price of all products with manufacturer code equal to 2.

=>  select AVG(price) from Products where Manufacturer=2;

8.  Compute the number of products with a price larger than or equal to $180.

=>  select count(*) FROM Products WHERE price>=180;

9.  Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).

=>  select name,price FROM Products WHERE price>=180 order by price desc,name;

10. Select all the data from the products, including all the data for each product's manufacturer.

=>  select a.*,b.name from Products a INNER join Manufacturers b WHERE a.Manufacturer = b.Code;

11. Select the product name, price, and manufacturer name of all the products.

=>  select p.name,p.price,m.name from Products p INNER join Manufacturers m where p.Manufacturer = m.code;

12. Select the average price of each manufacturer's products, showing only the manufacturer's code.

=>  select Avg(p.price),m.code from Products p INNER join Manufacturers m where p.Manufacturer=m.Code group by m.code;

13. Select the average price of each manufacturer's products, showing the manufacturer's name.

=>  select Avg(p.price),m.name from Products p INNER join Manufacturers m where p.Manufacturer=m.Code group by m.code;

14. Select the names of manufacturer whose products have an average price larger than or equal to $150.

=>  select avg(p.price),m.name from Manufacturers m INNER join Products p where m.Code = p.Manufacturer GROUP by m.Name HAVING avg(p.Price)>=150;

15. Select the name and price of the cheapest product.

=>  select name,price from products where price = (select Min(price) from Products);  

16. Select the name of each manufacturer along with the name and price of its most expensive product.

=>    

