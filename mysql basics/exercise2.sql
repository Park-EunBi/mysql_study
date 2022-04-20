-- 1 -- 
select distinct name 
from orders, book, customer
where orders.custid = customer.custid and orders.bookid = book.bookid and name not like '박지성' and publisher in 
			(select publisher
			from orders, book, customer 
			where orders.bookid = book.bookid and orders.custid = customer.custid and name like '박지성');
            
            
-- 2 --

select name  
from customer
where custid in (
select custid
from orders, book
where orders.bookid = book.bookid 
group by custid
having count(publisher) >= 2);

-- 3 -- 
select bookname 
from book, orders
where orders.bookid = book.bookid 
group by bookname
having count(orders.bookid) / (select count(*) from customer) * 100 >= 30;

-- 4 -- 
insert into book(bookid, bookname, publisher, price)
value (11, '스포츠 세계', '대한미디어', 10000);

-- 5 -- 
delete from book
where publisher like '삼성당';

select * from book;

-- 6 -- 
delete from book
where publisher like '이상미디어';

-- 7 -- 
update book
set publisher = '대한출판사'
where publisher like '대한미디어';

select * from book;