# ---------------------------------------------------------------
# CREATE TABLE bestload_books(bs_code, book_code, rnk, book_nums)
# ---------------------------------------------------------------

CREATE TABLE bestloan_books(SELECT DENSE_RANK() OVER(ORDER BY YY, MM, age, gender) AS bs_code, DENSE_RANK() OVER(ORDER BY ISBN) AS book_code, rnk, book_num
FROM ALL_data
ORDER BY bs_code, rnk);

#기본키 임의부여 생성
ALTER TABLE bestloan_books ADD id_bestbook INT PRIMARY KEY AUTO_INCREMENT; 
