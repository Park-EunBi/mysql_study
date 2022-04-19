-- 1 --
select count(publisher)
from book, customer, orders
where book.bookid = orders.bookid and customer.custid = orders.custid 
		and name like '박지성';
        
-- 2 --
select bookname, price, price - saleprice 
from book, orders, customer
where book.bookid = orders.bookid and orders.custid = customer.custid 
		and name like '박지성';
        
-- 3 -- 
select bookname 
from book 
where bookid not in (select bookid from orders where custid  = 
					(select custid from customer where name like '박지성'));
                    
-- 4 -- 
select name 
from customer 
where custid not in (select custid from orders);

-- 5 -- 
select sum(saleprice), avg(saleprice)
from orders;

-- 6 --
select name, sum(saleprice)
from orders, customer
where orders.custid = customer.custid
group by customer.custid;

-- 7 -- 
select name, bookname 
from customer, book, orders
where customer.custid = orders.custid and book.bookid = orders.bookid
order by customer.custid;

-- 8 --
select *
FROM 	Book, Orders
WHERE Book.bookid = Orders.bookid 
			AND Book.price - Orders.saleprice = 
					(SELECT MAX(Book.price - Orders.saleprice)
					FROM Book, Orders
					WHERE Book.bookid = Orders.bookid);
                    
-- 9 -- 
SELECT		Customer.name 
FROM 		Orders, Customer 
WHERE 		Orders.custid = Customer.custid
GROUP BY 	Customer.name 
HAVING 		AVG(Orders.saleprice) > (SELECT	AVG(Orders.saleprice)
									FROM Orders);
