INSERT INTO classmates (name, age)
VALUES ('홍길동', 23);

SELECT * FROM classmates;

INSERT INTO classmates (name, age, address)
VALUES ('홍길동', 30, '서울');

INSERT INTO classmates
VALUES ('공정배', 30, '서울'), ('김정', 27, '서울');
INSERT INTO classmates
VALUES ('김강현', 28, '서울'), ('하지수', 28, '서울');
INSERT INTO classmates
VALUES ('임건혁', 27, '수원'), ('박재성', 27, '용인');

-- SQLite 는 PK 를 지정하지 않으면 rowid를 자동으로 지정한다.
SELECT rowid, * FROM classmates;

-- classmates 에서 id, name column만 가지고 오기
SELECT rowid, name FROM classmates;

-- classmates 에서 id, name column 값을 1개만 가지고 오기
SELECT rowid, name FROM classmates LIMIT 1;

-- classmates 에서 id, name column 값을 3번째 있는 값
SELECT rowid, name FROM classmates LIMIT 1 OFFSET 2;

-- classmates 에서 주소가 서울인 사람만 가져오기
SELECT rowid, name FROM classmates WHERE address='서울';

-- classmates 에서 column 값을 중복없이 가져오기
SELECT DISTINCT age FROM classmates;

-- classmates 테이블에 id가 4인 data 삭제하기
DELETE FROM classmates WHERE rowid=4;

-- INSERT INTO tests (name)
-- VALUES ('홍길동'), ('김철수');

-- classmates 테이블에 id가 4인 레코드를 수정하기
-- 이름을 홍길동, 주소를 제주도로

UPDATE classmates
SET name='홍길동', address='제주도'
WHERE rowid=4;


/* WHERE문 심화 */
-- users 에서 age가 30 이상인 사람만
SELECT * FROM users WHERE age>=30;

-- users 에서 age가 30 이상인 사람의 이름만
SELECT first_name FROM users WHERE age>=30;

-- users 에서 age가 30 이상이고 성이 김인 사람의 성과 나이만 가져오기
SELECT last_name, age FROM users WHERE age>=30 AND last_name='김';

/* Expressions */
-- users 테이블의 총 레코드 수
SELECT COUNT(*) FROM users;

-- 30살 이상이 사람의 평균 나이
SELECT AVG(age) FROM users WHERE age>=30;

-- users에서 계좌 잔액이 가장 높은 사람과 액수
SELECT first_name, last_name, MAX(balance) FROM users;

-- 30살 이상의 사람의 평균 계좌 잔액
SELECT AVG(balance) FROM users WHERE age>=30;

/* Like */
-- 20대 인 사람
SELECT * FROM users WHERE age LIKE '2%';

-- 전화번호가 02인 사람
SELECT * FROM users WHERE phone LIKE '02%';

-- 이름이 준으로 끝나는 사람
SELECT * FROM users WHERE first_name LIKE '%준';

-- 중간번호가 5114 인 사람
SELECT * FROM users WHERE phone LIKE '%5114%';

-- 나이순으로 오름차순으로 정렬 상위 10개
SELECT * FROM users ORDER BY age ASC LIMIT 10;

-- 나이순 성역순
SELECT * FROM users ORDER BY age ASC, last_name DESC LIMIT 10;

-- 계좌 잔액순 내림차순 // 성과 이름
SELECT first_name, last_name FROM users ORDER BY balance DESC LIMIT 10;

