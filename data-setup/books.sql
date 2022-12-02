# ------------------------------------------------------------------------
# CREATE TABLE books(book_code, title, author, publisher, ISBN_adnum, a_code, c_code)
# ------------------------------------------------------------------------
CREATE TABLE books(
					SELECT DISTINCT ROW_NUMBER() OVER(ORDER BY ISBN) AS book_code,
						title,
						author,
						publisher,
						isbn,
            LPAD(ISBN_adnum, '5', '0') AS ISBN_adnum, -- 왼쪽 첫 번째 삭제된 0값 채워주기
						CASE WHEN SUBSTR(ISBN_adnum, 1, 1) = 0 THEN 0
							WHEN SUBSTR(ISBN_adnum, 1, 1) = 1 THEN 1
							WHEN SUBSTR(ISBN_adnum, 1, 1) = 4 THEN 4
							WHEN SUBSTR(ISBN_adnum, 1, 1) = 5 THEN 5
							WHEN SUBSTR(ISBN_adnum, 1, 1) = 6 THEN 6
							WHEN SUBSTR(ISBN_adnum, 1, 1) = 7 THEN 7
							WHEN SUBSTR(ISBN_adnum, 1, 1) = 9 THEN 9 END a_code,
						
						CASE  WHEN SUBSTR(ISBN_adnum, 3, 1) = 0 THEN 0
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 1 THEN 1
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 2 THEN 2
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 3 THEN 3
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 4 THEN 4
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 5 THEN 5
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 6 THEN 6
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 7 THEN 7
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 8 THEN 8
							WHEN SUBSTR(ISBN_adnum, 3, 1) = 9 THEN 9 END c_code    
					FROM blist
					ORDER BY book_code);
                    
SELECT *
FROM books;
