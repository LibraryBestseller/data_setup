## ✔️ 데이터 셋업 구성하기


사용 DBMS : `mysql`

### 1. `users` table : 대출 고객 정보 테이블

![image](https://user-images.githubusercontent.com/84497369/205203981-0f607f6a-26d2-465a-a341-aca5cbcf73b0.png)

    - bs_code : 고객 년/월/연령/성별 구별 코드
    - age : 나이
    - gender : 성별
    - YY : 년도
    - MM : 월
    


### 2. `books` table  : 대출 도서 테이블

![image](https://user-images.githubusercontent.com/84497369/205204104-09c5698c-ec8b-4654-984a-6edd8e007341.png)


    - book_code : 책 각각에 부여한 코드
    - title : 책 제목
    - author : 저자
    - publisher : 출판사
    - ISBN : isbn 코드
    - ISBN_adnum : isbn 부가코드_ 총 28건이 NULL
    - a_code : 독자대상 코드
    - c_code : 대분류 코드
    
    
### 3. `bestloan_books` table : 인기 대출 책 정보 테이블
    
![image](https://user-images.githubusercontent.com/84497369/205204519-84a69809-a3ac-4201-9fda-cbb7284a3ab5.png)


    - id_bestbook : bestloan_books의 기본키
    - bs_code : 고객 년/월/연령/성별 구별 코드
    - book_code : 책 구별 코드 (isbn 1:1 관계)
    - rnk : bs_code 별 책 인기 순위
    - book_nums : bs_code 별 책 대출 권수
    
    
### 4. `genre`  table : 책 세부 장르 테이블

![image](https://user-images.githubusercontent.com/84497369/205204773-a8daa268-6dc6-4c7e-a593-f06cd915f09e.png)
![image](https://user-images.githubusercontent.com/84497369/205204791-fd8adf24-27f2-4625-a07d-0239c5631a96.png)


    - id_genre : 장르테이블의 기본키
    - a_code : 독자대상 코드
    - a_category : 독자대상 장르 ( 교양, 실용, 여성, 청소년, 학습참고서, 아동 등⋯)
        - 세부 설명
            0 : 교양
            1 : 실용
            2 : 여성
            3 : 예비번호
            4 : 청소년
            5 : 중·고교용 학습참고서       
            6 : 초등용 학습참고서
            7 : 아동
            8 : 예비번호      
            9 : 전문·학술
    - c_code : 대분류 코드
    - c_category : 대분류 설명
        - 세부 설명
            0 : 총류, 컴퓨터과학
            1 : 철학, 심리학, 윤리학
            2 : 종교
            3 : 사회과학
            4 : 자연과학
            5 : 기술과학
            6 : 예술
            7 : 어학
            8 : 문학
            9 : 역사, 지리, 관광

----

## ✔️ ERD
![image](https://user-images.githubusercontent.com/84497369/205215778-2918bd01-3ed7-445d-9bc9-aa272f855d56.png)

