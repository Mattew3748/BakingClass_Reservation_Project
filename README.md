# 팀프로젝트_SWEEITE_ 베이킹클래스 예약홈페이지
## Index
### 1. 주제선정 및 개발목적
### 2. 개발기간
### 3. 아키텍처 설계
### 4. DB 설계
### 5. 사용기술
### 6. 맡은 역할 및 기술
-------------------
### 1. 주제선정 및 개발목적
![캡처21312](https://user-images.githubusercontent.com/73806238/119221238-5f308280-bb29-11eb-8c43-f590dcfb0506.PNG)
---------------------
### 2. 개발기간
![그림1](https://user-images.githubusercontent.com/73806238/119220966-f8f73000-bb27-11eb-8312-f730236a71d5.png)
------------
### 3. 아키텍처 설계
![그림3](https://user-images.githubusercontent.com/73806238/119221010-2a6ffb80-bb28-11eb-80f3-387f7d9ea16e.png)
------------------------------
### 4. DB TABLE
![그림2](https://user-images.githubusercontent.com/73806238/119220983-12987780-bb28-11eb-852f-3f1b544a0761.png)
-------------------
### 5. 사용기술
![캡처](https://user-images.githubusercontent.com/73806238/119221257-71aabc00-bb29-11eb-92db-b3759e44262f.PNG)    
------------------------------
### 6. 맡은 역할 및 기술
![캡처1](https://user-images.githubusercontent.com/73806238/119221299-9f900080-bb29-11eb-8657-2b02ba0cfbe5.PNG)    
#### - Reservation - 예약    
![1](https://user-images.githubusercontent.com/73806238/119221394-3066dc00-bb2a-11eb-85eb-8d4f453a7b26.png)    
    * 신청하기 클릭하면 예약 신청 폼으로 이동
    * 신청한 클래스명 자동기입 (수정불가)
    * 인원에 따른 클래스별 자동 계산 처리
    * 예약하기 완료 시 예약내역에서 조회 가능    
    
#### - Reservation - 예약조회    
![2](https://user-images.githubusercontent.com/73806238/119221495-aa976080-bb2a-11eb-80bb-199965b50bf6.jpg)    
    * 예약신청 완료 시, 익일 오전9시까지 카운트 다운 시작 (비동기)
    * 결제기한내 미결제 시, 결제마감으로 변경
    * 무통장입금 결제 시, 입금 확인중으로 변경 (카운트 다운 사라짐)
    * 카드결제시 결제완료로 변경 (카운트 다운 사라짐)    
     
#### - Payment    
![3](https://user-images.githubusercontent.com/73806238/119221526-cd297980-bb2a-11eb-952a-73ac091f9e50.png)       
- 결제하기 클릭 시 라디오버튼 클릭에 따른 결제 form 변환

#### - 무통장 입금
    * 입금가능한 계좌번호 노출
    * 예약번호 결제금액 수정불가

#### - 카드 결제     
![4](https://user-images.githubusercontent.com/73806238/119221609-18438c80-bb2b-11eb-8541-40d8e3500ac6.png)     
    * 카드번호에 따른 카드 색 변화와 카드사 변경 이벤트 
    * 이름 기입 시, 뒷면에 자동서명 이벤트   
    * CVC 영역 Onclick 이벤트 뒷면으로 전환


