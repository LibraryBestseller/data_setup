SELECT ISBN, 
			LPAD(ISBN_adnum, '5', '0') AS ISBN_adnum,
			YY,
			MM,
			age,
			gender,
			DENSE_RANK() OVER(ORDER BY ISBN) AS book_code, 
			DENSE_RANK() OVER(ORDER BY YY, MM, age, gender) AS bs_code
FROM blist
ORDER BY bs_code;
