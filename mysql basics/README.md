DML (데이터 조작어)
===
데이터 검색, 삭제, 삽입, 수정에 사용 
- SELECT 
- DELETE
- INSERT
- UPDATE
***
SELECT
---
```
SELECT [ALL | DISTINCT]  속성_이름
FROM        테이블_이름
[WHERE      검색_조건]
[GROUP BY   속성_이름]
[HAVING     검색_조건]
[ORDER BY   속성_이름 [ASC | DESC]] 
