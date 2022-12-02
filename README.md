<div align=center><h1>📖 코로나 전후 인기 대출 도서 📖</h1></div><br/>

<p align="center">
	<img src="https://user-images.githubusercontent.com/109563978/205206370-5b8383ba-c198-4105-be13-ffd4bed0213c.jpg" width="400" height="300">
</p>

## ✔️ 개요
* 코로나 전후 도서관 인기 대출 도서 데이터 셋업 구현
* 데이터 출처
  * 도서관 정보나루에서 인기 대출 도서 데이터 스프레드 시트 660개, 데이터 13,2000건 수집(그 중 8,765건 사용), 대출 건수 440,125건
<br/>

## ✔️ 데이터 설명
* 도서관 정보나루
  * 도서관별 장서 및 대출빈도 데이터를 주기적으로 갱신하여 공개하는 사이트
  * 지역별, 연령별, 성별 대출 도서를 분석하여 제공
  * [도서관 정보나루 사이트](https://www.data4library.kr)

* 다운로드한 데이터 형태
<img src="https://user-images.githubusercontent.com/109563978/205204129-2ff7b914-811b-4854-835f-6db0c494bda8.png" width="1000">
<p align="center">순위, 서명, 저자, 출판사, 출판년도, 월, ISBN, ISBN 부가기호, KDC, 대출건수로 구성</p>

 ## ✔️ [데이터 전처리](https://github.com/LibraryBestseller/data_setup/blob/main/data-processing/data-processing__.md)
- 인기대출도서 데이터 수집
- 해당 데이터 양식에 조건 추가
- 데이터 통합
- 데이터 형식 변환
 
 
 ## ✔️ [데이터 셋업](https://github.com/LibraryBestseller/data_setup/blob/main/data-setup/data-setup__.md)
- 사용 DBMS : `mysql`

|table|설명|
|------|---|
|user|대출 고객 정보 테이블]
|books|대출 도서 테이블|
|bestloan_books|인기 대출 책 정보 테이블|
|genre|책 세부 장르 테이블|

![image](https://user-images.githubusercontent.com/84497369/205215778-2918bd01-3ed7-445d-9bc9-aa272f855d56.png)
