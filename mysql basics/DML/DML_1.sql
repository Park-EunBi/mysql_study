-- 모든 도서의 이름과 가격 검색 
SELECT bookname, price
FROM BOok;

-- 모든 도서의 가격과 이름을 검색
SELECT price, bookname
FROM BOOK;

-- 모든 도서의 도서번호, 도서이름, 출판사, 가격 검색
SELECT bookid, bookname, publisher, price
FROM Book;

-- 도서 테이블에 있는 모든 출판사 검색 (중복 제거)
SELECT DISTINCT publisher 
FROM Book;

-- 가격이 20000원 미만인 도서 검색
SELECT bookname
FROM Book
WHERE price < 20000;