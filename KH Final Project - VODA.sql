------------------------------------------------
-------------- MEMBER 관련 테이블 ---------------
------------------------------------------------
﻿CREATE TABLE MEMBER (
	M_NO	NUMBER		NOT NULL,
	M_ID	VARCHAR2(500)		NOT NULL,
	M_PW	VARCHAR2(500)		NULL,
	M_NAME	VARCHAR2(500)		NULL,
	M_EMAIL	VARCHAR2(500)		NULL,
	M_PHONE	NUMBER		NULL,
	M_ADDRESS	VARCHAR2(1000)	NULL,
	M_GENDER	CHAR(1)		NULL,
	M_BIRTH	DATE		NULL,
	M_JOINDATE	DATE		NULL,
	M_AUTHORIZATION	CHAR(1)		NULL,
	M_STATUS	CHAR(1)		NULL,
	M_JOINWAY	VARCHAR2(20)		NULL,
);

COMMENT ON COLUMN MEMBER.M_NO IS '회원 번호';
COMMENT ON COLUMN MEMBER.M_ID IS '회원아이디';
COMMENT ON COLUMN MEMBER.M_PW IS '비밀번호';
COMMENT ON COLUMN MEMBER.M_NAME IS '회원이름';
COMMENT ON COLUMN MEMBER.M_EMAIL IS '이메일 주소';
COMMENT ON COLUMN MEMBER.M_PHONE IS '전화번호';
COMMENT ON COLUMN MEMBER.M_ADDRESS IS '주소';
COMMENT ON COLUMN MEMBER.M_BIRTH IS '생년월일';
COMMENT ON COLUMN MEMBER.M_GENDER IS '성별';
COMMENT ON COLUMN MEMBER.M_JOINDATE IS '가입일';
COMMENT ON COLUMN MEMBER.M_STATUS IS '계정상태';
COMMENT ON COLUMN MEMBER.M_AUTHORIZATION IS '계정권한';
COMMENT ON COLUMN MEMBER.M_JOINWAY IS '가입방법';

ALTER TABLE MEMBER ADD M_POSTNUM NUMBER	NULL;
ALTER TABLE MEMBER ADD M_DETAILADDRESS	VARCHAR2(1000)	NULL;

COMMENT ON COLUMN MEMBER.M_POSTNUM IS '우편번호';
COMMENT ON COLUMN MEMBER.M_DETAILADDRESS IS '상세주소';

-- MEMBER 시퀀스
CREATE SEQUENCE MEMBER_SEQ
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;
       
-- MEMBER PK
ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	M_NO
);

-- 테스트 값 --
INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'test1', 
    '1234', 
    'test이름', 
    'voda1234@gmail.com', 
    '01012341234', 
    '서울시 강남구 역삼동', 
    'W',
    '2022-09-20',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

UPDATE MEMBER SET M_POSTNUM = '12345', M_DETAILADDRESS ='테스트 변경';


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'happiness1234', 
    '1234', 
    '이행복', 
    'happiness1234@gmail.com', 
    '01012343506', 
    '서울 강남구 선릉로 8, 래미안블레스티지아파트 201동 611호', 
    'W',
    '2000-10-29',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

UPDATE MEMBER SET M_ADDRESS = '서울 강남구 선릉로 8', M_POSTNUM = '06326', M_DETAILADDRESS = '래미안블레스티지아파트 201동 611호' WHERE M_NO = 3;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'inkpad1234', 
    '1234', 
    '오인주', 
    'inkpad1234@gmail.com', 
    '01020220929', 
    '서울 용산구 서빙고로 413, 현대하이페리온 아파트' , 
    'W',
    '1991-07-02',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

UPDATE MEMBER SET M_ADDRESS = '서울 용산구 서빙고로 413', M_POSTNUM = '04416', M_DETAILADDRESS = '현대하이페리온 아파트' WHERE M_NO = 4;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'boundary0917', 
    '1234', 
    '오인경', 
    'boundary0917@gmail.com', 
    '01020210726', 
    '인천 미추홀구 소성로 120, 동아풍림아파트' , 
    'W',
    '1995-09-17',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

UPDATE MEMBER SET M_ADDRESS = '인천 미추홀구 소성로 120', M_POSTNUM = '22202', M_DETAILADDRESS = '동아풍림아파트' WHERE M_NO = 5;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'mercy1107', 
    '1234', 
    '오인혜', 
    'mercy1107@gmail.com', 
    '01011232020', 
    '대구 동구 큰고개로 23, 신암보성타운1차아파트' , 
    'W',
    '1995-09-17',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'SNS'
);

UPDATE MEMBER SET M_ADDRESS = '대구 동구 큰고개로 23', M_POSTNUM = '41193', M_DETAILADDRESS = '신암보성타운1차아파트' WHERE M_NO = 6;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'visit0805', 
    '1234', 
    '최도일', 
    'visit0805@naver.com', 
    '01018006800', 
    '경기 안양시 만안구 안양로 186, 안양 센트럴 헤센 2차' , 
    'M',
    '1991-08-05',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'SNS'
);

UPDATE MEMBER SET M_ADDRESS = '경기 안양시 만안구 안양로 186', M_POSTNUM = '14033', M_DETAILADDRESS = '안양 센트럴 헤센 2차' WHERE M_NO = 7;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'flowerglume1234', 
    '1234', 
    '진화영', 
    'flowerglume1234@naver.com', 
    '01017004700', 
    '경상북도 대구시 서구 비산동 , 만평 아파트' , 
    'W',
    '1979-01-20',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

UPDATE MEMBER SET M_ADDRESS = '경상북도 대구시 서구 비산동', M_POSTNUM = '41719', M_DETAILADDRESS = '만평 아파트' WHERE M_NO = 8;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'premier66', 
    '1234', 
    '박재상', 
    'premier66@naver.com', 
    '01020181234', 
    '서울 송파구 올림픽로 300, 롯데월드타워 101층' , 
    'M',
    '1976-03-23',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

UPDATE MEMBER SET M_ADDRESS = '서울 송파구 올림픽로 300', M_POSTNUM = '05551', M_DETAILADDRESS = '롯데월드타워 101층' WHERE M_NO = 9;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'wiregauge77', 
    '1234', 
    '진선규', 
    'wiregauge77@gmail.com', 
    '01077770303', 
    '경남 창원시 진해구 웅천동로 16, 남문1차 시티프라디움' , 
    'M',
    '1977-09-13',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

UPDATE MEMBER SET M_ADDRESS = '경남 창원시 진해구 웅천동로 16', M_POSTNUM = '51618', M_DETAILADDRESS = '남문1차 시티프라디움' WHERE M_NO = 10;


INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'admin1234', 
    '1234', 
    '진규님', 
    'admin1234@gmail.com', 
    '01012341234', 
    '서울 강남구 테헤란로14길 6 남도빌딩 2층, 3층, 4층' , 
    'M',
    '2000-09-29',
    DEFAULT,
    'M',
    DEFAULT,
    DEFAULT
);

-- x


------------------------------------------------
-------------- NOTICE 관련 테이블 ---------------
------------------------------------------------
CREATE TABLE NOTICE (
	N_NO	NUMBER		NOT NULL,
	N_TITLE	VARCHAR2(50)		NULL,
    N_WRITERNO NUMBER NOT NULL,
    N_ID    VARCHAR2(500)       NULL,
	N_CONTENT	VARCHAR2(2000)		NULL,
	N_ORIGINAL_FILENAME	VARCHAR2(100)		NULL,
	N_RENAMED_FILENAME	VARCHAR2(100)		NULL,
	N_READCOUNT	NUMBER		NULL,
	N_STATUS	VARCHAR2(1)		NULL,
	N_CREATE_DATE	DATE		NULL,
	N_TOPTITLE	VARCHAR2(50)		NULL
);

COMMENT ON COLUMN NOTICE.N_NO IS '공지사항 번호';
COMMENT ON COLUMN NOTICE.N_TITLE IS '공지사항 제목';
COMMENT ON COLUMN NOTICE.N_WRITERNO IS '공지사항 작성자번호';
COMMENT ON COLUMN NOTICE.N_ID IS '공지사항 작성자';
COMMENT ON COLUMN NOTICE.N_CONTENT IS '공지사항 내용';
COMMENT ON COLUMN NOTICE.N_READCOUNT IS '공지사항 조회수';
COMMENT ON COLUMN NOTICE.N_STATUS IS '공지사항 상태';
COMMENT ON COLUMN NOTICE.N_CREATE_DATE IS '공지사항 작성일';
COMMENT ON COLUMN NOTICE.N_ORIGINAL_FILENAME IS '공지사항 원래파일명';
COMMENT ON COLUMN NOTICE.N_RENAMED_FILENAME IS '공지사항 변경파일명';
COMMENT ON COLUMN NOTICE.N_TOPTITLE IS '공지사항 최상위게시물';


-- NOTICE 시퀀스
CREATE SEQUENCE SEQ_NOTICE_NO;

-- NOTICE PK
ALTER TABLE NOTICE ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
	N_NO
);
-- NOTICE FK
ALTER TABLE NOTICE ADD CONSTRAINT FK_MEMBER_TO_NOTICE_1 FOREIGN KEY (
	N_WRITERNO
) REFERENCES MEMBER (
	M_NO
);


------------------------------------------------
------------- CONTENTS 관련 테이블 --------------
------------------------------------------------
CREATE TABLE CONTENTS (
	C_NO	NUMBER		NOT NULL,
	C_TITLE	VARCHAR2(300)		NULL,
	C_TYPE	VARCHAR2(20)		NULL,
	C_GENRE	VARCHAR2(20)		NULL,
	C_YEAR	NUMBER		NULL,
	C_NATION	VARCHAR2(20)		NULL,
    C_AGE   NUMBER      NULL,
	C_INFO	VARCHAR2(3000)		NULL,
	C_SYNOP	VARCHAR2(3000)		NULL,
	C_OBIMG	VARCHAR2(3000)		NULL,
	C_BIMG	VARCHAR2(3000)		NULL,
	C_OPIMG	VARCHAR2(3000)		NULL,
	C_PIMG	VARCHAR2(3000)		NULL,
	C_VIDEO	VARCHAR2(3000)		NULL,
	C_DATE	DATE		NULL,
	C_STATUS	VARCHAR2(1)		NULL,
    C_LEFTCOLOR VARCHAR2(30) NULL,
    C_RIGHTCOLOR VARCHAR2(30) 
);

COMMENT ON COLUMN CONTENTS.C_NO IS '컨텐츠 번호';
COMMENT ON COLUMN CONTENTS.C_TITLE IS '컨텐츠 명';
COMMENT ON COLUMN CONTENTS.C_TYPE IS '컨텐츠 타입';
COMMENT ON COLUMN CONTENTS.C_GENRE IS '컨텐츠 장르';
COMMENT ON COLUMN CONTENTS.C_YEAR IS '컨텐츠 연도';
COMMENT ON COLUMN CONTENTS.C_NATION IS '컨텐츠 국적';
COMMENT ON COLUMN CONTENTS.C_AGE IS '컨텐츠 연령가';
COMMENT ON COLUMN CONTENTS.C_INFO IS '컨텐츠 안내';
COMMENT ON COLUMN CONTENTS.C_SYNOP IS '컨텐츠 줄거리';
COMMENT ON COLUMN CONTENTS.C_BRGB IS '컨텐츠 배경 색상';
COMMENT ON COLUMN CONTENTS.C_OBIMG IS '컨텐츠 배경 이미지 원본';
COMMENT ON COLUMN CONTENTS.C_BIMG IS '컨텐츠 배경 이미지 변경';
COMMENT ON COLUMN CONTENTS.C_OPIMG IS '컨텐츠 프로필 이미지 원본';
COMMENT ON COLUMN CONTENTS.C_PIMG IS '컨텐츠 프로필 이미지 변경';
COMMENT ON COLUMN CONTENTS.C_VIDEO IS '컨텐츠 영상';
COMMENT ON COLUMN CONTENTS.C_DATE IS '컨텐츠 등록일';
COMMENT ON COLUMN CONTENTS.C_STATUS IS '컨텐츠 등록상태';

-- CONTENTS 시퀀스
CREATE SEQUENCE CONTENTS_SEQ
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;

-- CONTENTS PK
ALTER TABLE CONTENTS ADD CONSTRAINT PK_CONTENTS PRIMARY KEY (
	C_NO
);

------------------------------------------------
------------- COMMENTS 관련 테이블 --------------
------------------------------------------------
CREATE TABLE COMMENTS (
	CM_NO	NUMBER		NOT NULL,
	B_NO	NUMBER		NOT NULL,
	M_NO	NUMBER		NOT NULL,
	CM_CONTENT	VARCHAR2(1000)		NULL,
	CM_DATE	DATE		NULL
);

-- COMMENTS 시퀀스
CREATE SEQUENCE SEQ_COMMENTS_NO;

-- COMMENTS PK
ALTER TABLE COMMENTS ADD CONSTRAINT PK_COMMENTS PRIMARY KEY (
	CM_NO
);

COMMENT ON COLUMN COMMENTS.CM_NO IS '댓글 번호';
COMMENT ON COLUMN COMMENTS.B_NO IS '게시글 번호';
COMMENT ON COLUMN COMMENTS.M_NO IS '작성자 번호';
COMMENT ON COLUMN COMMENTS.CM_CONTENT IS '내용';
COMMENT ON COLUMN COMMENTS.CM_DATE IS '작성일자';

------------------------------------------------
--------------- LIKES 관련 테이블 ---------------
------------------------------------------------
CREATE TABLE LIKES (
	M_NO	NUMBER		NOT NULL,
	C_NO	NUMBER		NOT NULL
);

COMMENT ON COLUMN LIKES.M_NO IS '회원 번호';
COMMENT ON COLUMN LIKES.C_NO IS '컨텐츠 번호';

------------------------------------------------
--------------- REVIEW 관련 테이블 --------------
------------------------------------------------
CREATE TABLE REVIEW (
	R_NO	NUMBER		NOT NULL,
	M_NO	NUMBER		NOT NULL,
	R_DATE	DATE		NULL,
	R_CONTENT	VARCHAR2(100)		NULL
);

COMMENT ON COLUMN REVIEW.R_NO IS '상품 리뷰 번호';
COMMENT ON COLUMN REVIEW.M_NO IS '회원 번호';
COMMENT ON COLUMN REVIEW.R_DATE IS '상품 리뷰 등록일';
COMMENT ON COLUMN REVIEW.R_CONTENT IS '상품 리뷰 내용';

-- REVIEW 시퀀스
CREATE SEQUENCE SEQ_REVNO START WITH 1;

-- REVIEW PK
ALTER TABLE REVIEW ADD CONSTRAINT PK_REVIEW PRIMARY KEY (
	R_NO
);

------------------------------------------------
--------------- PEOPLE 관련 테이블 --------------
------------------------------------------------
CREATE TABLE PEOPLE (
	PEOPLE_NO	NUMBER		NOT NULL,
	PEOPLE_ORIGINAL_FILENAME	VARCHAR2(3000)		NULL,
	PEOPLE_RENAMED_FILENAME	VARCHAR2(3000)		NULL,
	PEOPLE_NAME	VARCHAR2(300)		NOT NULL,
	PEOPLE_JOB	VARCHAR2(300)		NULL,
	PEOPLE_DEBUT	DATE		NULL,
	PEOPLE_BIRTH	DATE		NULL,
	PEOPLE_AWARD	VARCHAR2(500)		NULL,
	PEOPLE_GENDER	VARCHAR2(50)		NULL
);

ALTER TABLE PEOPLE MODIFY PEOPLE_DEBUT VARCHAR2(500);
ALTER TABLE PEOPLE MODIFY PEOPLE_BIRTH VARCHAR2(500);


COMMENT ON COLUMN PEOPLE.PEOPLE_NO IS '인물 번호';
COMMENT ON COLUMN PEOPLE.PEOPLE_ORIGINAL_FILENAME IS '인물 기존 파일명';
COMMENT ON COLUMN PEOPLE.PEOPLE_RENAMED_FILENAME IS '인물 변경 파일명';
COMMENT ON COLUMN PEOPLE.PEOPLE_NAME IS '인물 이름';
COMMENT ON COLUMN PEOPLE.PEOPLE_JOB IS '인물 직업';
COMMENT ON COLUMN PEOPLE.PEOPLE_DEBUT IS '인물 데뷔';
COMMENT ON COLUMN PEOPLE.PEOPLE_BIRTH IS '인물 출생일';
COMMENT ON COLUMN PEOPLE.PEOPLE_AWARD IS '인물 수상';
COMMENT ON COLUMN PEOPLE.PEOPLE_GENDER IS '인물 성별';

-- PEOPLE 시퀀스
CREATE SEQUENCE SEQ_PEOPLE_NO;

-- PEOPLE PK
ALTER TABLE PEOPLE ADD CONSTRAINT PK_PEOPLE PRIMARY KEY (
	PEOPLE_NO
);


-- 테스트 값 -- 
INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '기존 파일명', 
    '변경 파일명', 
    '서인국', 
    '가수, 탤런트', 
    '2009년 EP 앨범 ''부른다''', 
    '1987.10.23', 
    '2016.12.30 MBC 연기대상 외',
    '남성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '최우식 기존 파일명', 
    '최우식 변경 파일명', 
    '최우식', 
    '영화배우, 탤런트', 
    '2011년 MBC 드라마 ''짝패''', 
    '1990.3.26', 
    '2021.12.31 SBS 연기대상 외',
    '남성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '아이유 기존 파일명', 
    '아이유 변경 파일명', 
    '아이유', 
    '가수, 탤런트', 
    '2008년 EP 앨범 ''Lost And Found''', 
    '1993.05.16', 
    '2022.08.25 2022 K 글로벌 하트 드림 어워즈 외',
    '여성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '염정아 기존 파일명', 
    '염정아 변경 파일명', 
    '염정아', 
    '탤런트, 영화배우', 
    '1991년 MBC 드라마 ''우리들의 천국''', 
    '1972.7.28', 
    '2019.07 제3회 申필름예술영화제 외 ',
    '여성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '라미란 기존 파일명', 
    '라미란 변경 파일명', 
    '라미란', 
    '탤런트, 영화배우', 
    '2005년 영화 ''친절한 금자씨''', 
    '1975.03.06', 
    '2021.02 제41회 청룡영화상 외',
    '여성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '장유정 기존 파일명', 
    '장유정 변경 파일명', 
    '장유정', 
    '영화감독, 감독/연출', 
    '2010년 영화 ''김종욱 찾기''', 
    '1976', 
    '2013.10.07 제19회 한국 뮤지컬대상 시상식 외',
    '여성'
);


INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '박진주 기존 파일명', 
    '박진주 변경 파일명', 
    '박진주', 
    '영화배우, 뮤지컬배우', 
    '2011년 영화 ''써니''', 
    '1988.12.24', 
    '2017.12.31 SBS 연기대상',
    '여성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '레아 세두 기존 파일명', 
    '레아 세두 변경 파일명', 
    '레아 세두', 
    '영화배우, 모델', 
    '	2006년 영화 ''나의 친구들''', 
    '1985.07.01', 
    '2013 칸 영화제',
    '여성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '김태리 기존 파일명', 
    '김태리 변경 파일명', 
    '김태리', 
    '영화배우', 
    '2014년 더바디샵 CF', 
    '1990.04.24', 
    '2022년 제58회 백상예술대상 TV부문 여자 최우수연기상 외',
    '여성'
);

INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '하정우 기존 파일명', 
    '하정우 변경 파일명', 
    '하정우', 
    '영화배우, 영화감독', 
    '2003년 영화 ''마들렌''', 
    '1978.03.11', 
    '2019.11.25 제3회 한중국제영화제 외',
    '남성'
);


INSERT INTO PEOPLE VALUES(
    SEQ_PEOPLE_NO.NEXTVAL,
    '조진웅 기존 파일명', 
    '조진웅 변경 파일명', 
    '조진웅', 
    '영화배우, 탤런트', 
    '2004년 영화 ''말죽거리 잔혹사''', 
    '1976.04.02', 
    '2021.03.11 제40회 황금촬영상 외',
    '남성'
);

------------------------------------------------
--------------- CART 관련 테이블 ----------------
------------------------------------------------
CREATE TABLE CART (
	M_NO	NUMBER		NOT NULL,
	P_NO	NUMBER		NOT NULL
);

COMMENT ON COLUMN CART.M_NO IS '회원 번호';
COMMENT ON COLUMN CART.P_NO IS '상품 번호';

-- CART 시퀀스
CREATE SEQUENCE SEQ_CARTNO START WITH 1;

-- CART PK
ALTER TABLE CART ADD CONSTRAINT PK_CART PRIMARY KEY (
	M_NO,
	P_NO
);

-- CART FK
ALTER TABLE CART ADD CONSTRAINT FK_MEMBER_TO_CART_1 FOREIGN KEY (
	M_NO
) REFERENCES MEMBER (
	M_NO
);

ALTER TABLE CART ADD CONSTRAINT FK_PRODUCT_TO_CART_1 FOREIGN KEY (
	P_NO
) REFERENCES PRODUCT (
	P_NO
);

------------------------------------------------
--------------- PAY 관련 테이블 -----------------
------------------------------------------------
CREATE TABLE PAY (
	PAY_NO	NUMBER		NOT NULL,
	PAY_MERCHANT	VARCHAR2(30)		NULL,
	PAY_ACOUNT	NUMBER		NULL,
	PAY_METHOD	VARCHAR2(20)		NULL
);

COMMENT ON COLUMN PAY.PAY_NO IS '주문 번호';
COMMENT ON COLUMN PAY.PAY_MERCHANT IS '가맹점식별코드';
COMMENT ON COLUMN PAY.PAY_ACOUNT IS '계좌번호';
COMMENT ON COLUMN PAY.PAY_METHOD IS '결제수단';

-- PAY 시퀀스
CREATE SEQUENCE SEQ_PAYNO START WITH 1;

-- PAY PK
ALTER TABLE PAY ADD CONSTRAINT PK_PAY PRIMARY KEY (
	PAY_NO
);

------------------------------------------------
--------------- VISIT 관련 테이블 ---------------
------------------------------------------------
CREATE TABLE VISIT (
	V_NO	NUMBER		NOT NULL,
	V_DATE	DATE		NOT NULL,
	V_COUNT	NUMBER		NULL
);

COMMENT ON COLUMN VISIT.V_NO IS '방문 번호';
COMMENT ON COLUMN VISIT.V_DATE IS '일별날짜';
COMMENT ON COLUMN VISIT.V_COUNT IS '당일총방문횟수';

-- VISIT 시퀀스
CREATE SEQUENCE SEQ_VISIT_NO;

-- VISIT PK
ALTER TABLE VISIT ADD CONSTRAINT PK_VISIT PRIMARY KEY (
	V_NO
);

------------------------------------------------
---------- CONTENTSPEOPLE 관련 테이블 -----------
------------------------------------------------
CREATE TABLE CONTENTSPEOPLE (
	C_NO	NUMBER		NOT NULL,
	PEOPLE_NO	NUMBER		NOT NULL,
	CP_ROLE	VARCHAR2(100)		NULL,
    CP_IMG VARCHAR2(1000)   NULL,
    CP_OIMG VARCHAR2(1000) NULL
);

COMMENT ON COLUMN CONTENTSPEOPLE.C_NO IS '컨텐츠번호';
COMMENT ON COLUMN CONTENTSPEOPLE.PEOPLE_NO IS '인물번호';
COMMENT ON COLUMN CONTENTSPEOPLE.CR_ROLE IS '역할';
COMMENT ON COLUMN CONTENTSPEOPLE.CP_IMG IS '컨테츠 인물 이미지명';
COMMENT ON COLUMN CONTENTSPEOPLE.CP_OIMG IS '컨텐츠 인물 원본 이미지명';

-- CONTENTSPEOPLE 시퀀스
CREATE SEQUENCE SEQ_CONTENTSPEOPLE_NO;

-- CONTENTSPEOPLE PK
ALTER TABLE CONTENTSPEOPLE ADD CONSTRAINT PK_CONTENTSPEOPLE PRIMARY KEY (
	C_NO,
	PEOPLE_NO
);

-- CONTENTSPEOPLE FK
ALTER TABLE CONTENTSPEOPLE ADD CONSTRAINT FK_CONTENTS_TO_CONTENTSPEOPLE_1 FOREIGN KEY (
	C_NO
) REFERENCES CONTENTS (
	C_NO
);

ALTER TABLE CONTENTSPEOPLE ADD CONSTRAINT FK_PEOPLE_TO_CONTENTSPEOPLE_1 FOREIGN KEY (
	PEOPLE_NO
) REFERENCES PEOPLE (
	PEOPLE_NO
);

------------------------------------------------
--------------- PRODUCT 관련 테이블 -------------
------------------------------------------------
CREATE TABLE PRODUCT (
	P_NO	NUMBER		NOT NULL,
	P_NAME	VARCHAR2(300)		NULL,
	P_PRICE	NUMBER		NULL,
	P_QTT	NUMBER		NULL,
	P_CONTENTS	VARCHAR2(3000)		NULL,
	P_VIEW	NUMBER		NULL,
	P_DATE	DATE		NULL,
	P_STATUS	VARCHAR2(1)		NULL,
	P_ORIGINFILE	VARCHAR2(50)		NULL,
	P_RENAMEFILE	VARCHAR2(50)		NULL
);

COMMENT ON COLUMN PRODUCT.P_NO IS '상품번호';
COMMENT ON COLUMN PRODUCT.P_NAME IS '상품명';
COMMENT ON COLUMN PRODUCT.P_PRICE IS '상품가격';
COMMENT ON COLUMN PRODUCT.P_QTT IS '수량';
COMMENT ON COLUMN PRODUCT.P_CONTENTS IS '상품설명';
COMMENT ON COLUMN PRODUCT.P_VIEW IS '조회수';
COMMENT ON COLUMN PRODUCT.P_STATUS IS '상품등록상태';
COMMENT ON COLUMN PRODUCT.P_DATE IS '상품등록일';
COMMENT ON COLUMN PRODUCT.P_ORIGINFILE IS '오리지날이미지파일';
COMMENT ON COLUMN PRODUCT.P_RENAMEFILE IS '리네임이미지파일';

-- PRODUCT 시퀀스
CREATE SEQUENCE SEQ_PNO START WITH 1;

-- PRODUCT PK
ALTER TABLE PRODUCT ADD CONSTRAINT PK_PRODUCT PRIMARY KEY (
	P_NO
);

------------------------------------------------
--------------- ORDERS 관련 테이블 --------------
------------------------------------------------
CREATE TABLE ORDERS (
	M_NO	NUMBER	NOT NULL,
	P_NO	NUMBER	NOT NULL,
	PAY_NO	NUMBER	NOT NULL,
	O_DATE	DATE	NULL,
	O_QTT	NUMBER	NULL,
	O_ADRESS	VARCHAR2(60)	NULL,
	O_PRICE	NUMBER	NULL
);

COMMENT ON COLUMN ORDERS.P_NO IS '상품번호';
COMMENT ON COLUMN ORDERS.PAY_NO IS '주문번호';
COMMENT ON COLUMN ORDERS.M_NO IS '회원번호';
COMMENT ON COLUMN ORDERS.O_DATE IS '주문등록일자';
COMMENT ON COLUMN ORDERS.O_QTT IS '주문수량';
COMMENT ON COLUMN ORDERS.O_ADRESS IS '배송주소';
COMMENT ON COLUMN ORDERS.O_PRICE IS '결제금액';

-- ORDER PK
ALTER TABLE ORDERS ADD CONSTRAINT PK_ORDERS PRIMARY KEY (
	M_NO,
	P_NO,
	PAY_NO
);

-- ORDER FK
ALTER TABLE ORDERS ADD CONSTRAINT FK_MEMBER_TO_ORDERS_1 FOREIGN KEY (
	M_NO
) REFERENCES MEMBER (
	M_NO
);

ALTER TABLE ORDERS ADD CONSTRAINT FK_PRODUCT_TO_ORDERS_1 FOREIGN KEY (
	P_NO
) REFERENCES PRODUCT (
	P_NO
);

ALTER TABLE ORDERS ADD CONSTRAINT FK_PAY_TO_ORDERS_1 FOREIGN KEY (
	PAY_NO
) REFERENCES PAY (
	PAY_NO
);

------------------------------------------------
--------------- CVIEW 관련 테이블 ---------------
------------------------------------------------
CREATE TABLE CVIEW (
	CV_NO	NUMBER		NOT NULL,
	CV_DATE	DATE		NOT NULL,
	CV_COUNT	NUMBER		NULL
);

COMMENT ON COLUMN CVIEW.CV_NO IS '조회수 번호';
COMMENT ON COLUMN CVIEW.CV_DATE IS '일별날짜';
COMMENT ON COLUMN CVIEW.CV_COUNT IS '당일 총조회수';

-- CVIEW 시퀀스
CREATE SEQUENCE SEQ_CVIEW_NO;

-- CVIEW PK
ALTER TABLE CVIEW ADD CONSTRAINT PK_CVIEW PRIMARY KEY (
	CV_NO
);

------------------------------------------------
--------------- BOARD 관련 테이블 ---------------
------------------------------------------------
CREATE TABLE BOARD (
	B_NO	NUMBER		NOT NULL,
	M_NO	NUMBER		NOT NULL,
	B_TYPE	VARCHAR2(10)		NULL,
	B_TITLE	VARCHAR2(1000)		NULL,
	B_TIMESTAMP	TIMESTAMP		NULL,
	B_CONTENT	VARCHAR2(4000)		NULL,
	B_ORIGINAL_FILENAME	VARCHAR2(100)		NULL,
	B_RENAMED_FILENAME	VARCHAR2(100)		NULL,
	B_VIEW	NUMBER		NULL,
	B_STATUS	VARCHAR2(1)		NULL,
	B_ANSWER_STATUS	VARCHAR2(1)		NULL
);

COMMENT ON COLUMN BOARD.B_NO IS '게시글 번호';
COMMENT ON COLUMN BOARD.M_NO IS '작성자 번호';
COMMENT ON COLUMN BOARD.B_TYPE IS '게시글타입';
COMMENT ON COLUMN BOARD.B_TITLE IS '제목';
COMMENT ON COLUMN BOARD.B_TIMESTAMP IS '작성일자';
COMMENT ON COLUMN BOARD.B_CONTENT IS '내용';
COMMENT ON COLUMN BOARD.B_ORIGINAL_FILENAME IS '게시 원래 파일명';
COMMENT ON COLUMN BOARD.B_RENAMED_FILENAME IS '게시 변경 파일명';
COMMENT ON COLUMN BOARD.B_VIEW IS '게시 원래 파일명';
COMMENT ON COLUMN BOARD.B_STATUS IS '게시 상태';
COMMENT ON COLUMN BOARD.B_ANSWER_STATUS IS '게시 답변여부';

-- BOARD 시퀀스
CREATE SEQUENCE SEQ_BOARD_NO;

-- BOARD PK
ALTER TABLE BOARD ADD CONSTRAINT PK_BOARD PRIMARY KEY (
	B_NO
);

-- BOARD FK
ALTER TABLE BOARD ADD CONSTRAINT FK_MEMBER_TO_BOARD_1 FOREIGN KEY (
	M_NO
) REFERENCES MEMBER (
	M_NO
);

------------------------------------------------
--------------- RATE 관련 테이블 ---------------
------------------------------------------------
CREATE TABLE RATE (
	RATE_NO	NUMBER		NULL,
	C_NO	NUMBER		NOT NULL,
	M_NO	NUMBER		NOT NULL,
	RATE_STAR	NUMBER		NULL,
	RATE_COMMENT	VARCHAR2(3000)		NULL,
	RATE_DATE	DATE		NULL,
	RATE_LIKE	NUMBER		NULL
);

COMMENT ON COLUMN RATE.RATE_NO IS '평가 번호';
COMMENT ON COLUMN RATE.C_NO IS '컨텐츠 번호';
COMMENT ON COLUMN RATE.M_NO IS '회원 번호';
COMMENT ON COLUMN RATE.RATE_STAR IS '코멘트 별점';
COMMENT ON COLUMN RATE.RATE_COMMENT IS '컨텐츠 코멘트';
COMMENT ON COLUMN RATE.RATE_DATE IS '코멘트 등록일';
COMMENT ON COLUMN RATE.RATE_LIKE IS '코멘트 좋아요';

-- RATE 시퀀스
CREATE SEQUENCE RATE_SEQ
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;

-- RATE PK
ALTER TABLE RATE ADD CONSTRAINT PK_RATE PRIMARY KEY (
	RATE_NO
);


-- 테스트 값 


INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'공조2: 인터내셔날', 
'영화',
'액션',
2022,
'한국', 
'개요',
'공조 이즈 백! 이번엔 삼각 공조다! 남한으로 숨어든 글로벌 범죄 조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사 ‘림철령’(현빈).',
'rgb(155,155,155)',
'공조 포스터 원본명',
'공조 포스터 변경명',
'공조 프로필 포스터 원본명',
'공조 프로필 포스터 변경명',
'http:dfjkdsjfl.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'모가디슈', 
'영화',
'액션',
2022,
'한국', 
'개요',
'내전으로 고립된 낯선 도시, 모가디슈 지금부터 우리의 목표는 오로지 생존이다! 대한민국이 UN가입을 위해 동분서주하던 시기 1991년 소말리아의 수도 모가디슈에서는 일촉즉발의 내전이 일어난다.',
'rgb(120,120,120)',
'모가디슈 포스터 원본명',
'모가디슈 포스터 변경명',
'모가디슈 프로필 포스터 원본명',
'모가디슈 프로필 포스터 변경명',
'http:htorejwlj.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'놉', 
'영화',
'미스터리',
2022,
'미국', 
'개요',
'거대하고, 주목받길 원하고, 미쳤다. 나쁜 기적이라는 것도 있을까? ',
'rgb(100,100,100)',
'놉 포스터 원본명',
'놉 포스터 변경명',
'놉 프로필 포스터 원본명',
'놉 프로필 포스터 변경명',
'http:dkfjsldj.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'외모지상주의', 
'웹툰',
'드라마',
2022,
'한국', 
'개요',
'못생기고 뚱뚱하다고 괴롭힘을 당하며 루저 인생만 살아온 내가 잘생겨졌다는 이유로 인싸가 됐다.',
'rgb(50,50,50)',
'외모지상주의 포스터 원본명',
'외모지상주의 포스터 변경명',
'외모지상주의 프로필 포스터 원본명',
'외모지상주의 프로필 포스터 변경명',
'http:djfdskjflsd.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'외모지상주의', 
'웹툰',
'드라마',
2022,
'한국', 
'개요',
'못생기고 뚱뚱하다고 괴롭힘을 당하며 루저 인생만 살아온 내가 잘생겨졌다는 이유로 인싸가 됐다.',
'rgb(50,50,50)',
'외모지상주의 포스터 원본명',
'외모지상주의 포스터 변경명',
'외모지상주의 프로필 포스터 원본명',
'외모지상주의 프로필 포스터 변경명',
'http:djfdskjflsd.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'99강화나무몽둥이', 
'웹툰',
'판타지',
2022,
'한국', 
'개요',
'약육강식이 진리인 가상 현실 게임 '크로노 라이프'. 허접이라며 무시만 당하던 '나'는 우연히 얻은 초보용 기본 무기 '나무 뭉둥이' 를 +99 강화까지 성공하게 되고,',
'rgb(70,70,70)',
'강화나무몽둥이 포스터 원본명',
'강화나무몽둥이 포스터 변경명',
'강화나무몽둥이 프로필 포스터 원본명',
'강화나무몽둥이 프로필 포스터 변경명',
'http:wqjklldf.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'으라차차내인생', 
'드라마',
'드라마',
2022,
'한국', 
'개요',
'조카의 엄마가 되기로 선택한 싱글맘, 서동희가 세상을 향해 펼치는 고군분투기를 담은 드라마',
'rgb(50,50,50)',
'으라차차내인생 포스터 원본명',
'으라차차내인생 포스터 변경명',
'으라차차내인생 프로필 포스터 원본명',
'으라차차내인생 프로필 포스터 변경명',
'http:wqjklldf.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'황금가면', 
'드라마',
'드라마',
2022,
'한국', 
'개요',
'그릇된 욕망과 탐욕이 빚어낸 비극으로, 세 여자의 광기 어린 싸움 속에서 삶의 해답을 찾아가는 이야기',
'rgb(50,50,50)',
'황금가면 포스터 원본명',
'황금가면 포스터 변경명',
'황금가면 프로필 포스터 원본명',
'황금가면 프로필 포스터 변경명',
'http:dkfjsldj.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'아버지의해방일지', 
'도서',
'소설',
2022,
'한국', 
'개요',
'소설은 ‘전직 빨치산’ 아버지의 죽음 이후 3일간의 시간만을 현재적 배경으로 다루지만, 장례식장에서 얽히고설킨 이야기를 따라가다보면 해방 이후 70년 현대사의 질곡이 생생하게 드러난다.',
'rgb(50,50,50)',
'아버지의해방일지 포스터 원본명',
'아버지의해방일지 포스터 변경명',
'아버지의해방일지 프로필 포스터 원본명',
'아버지의해방일지 프로필 포스터 변경명',
'http:dsjfjdsfj.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'역행자', 
'도서',
'자기계발서',
2022,
'한국', 
'개요',
'대부분의 사람들은 유전자와 본성의 명령을 그대로 따르기 때문에 평범함을 벗어날 수 없다. 하지만 정작 자신은 이를 모른 채 ‘나는 달라’ 하는 자의식에 사로잡혀서 무한 합리화에 빠져 살아간다. ',
'rgb(50,50,50)',
'역행자 포스터 원본명',
'역행자 포스터 변경명',
'역행자 프로필 포스터 원본명',
'역행자 프로필 포스터 변경명',
'http:dsjfjdsfj.com',
SYSDATE,
'Y'
);

INSERT INTO CONTENTS
VALUES 
(CONTENTS_SEQ.NEXTVAL, 
'하얼빈', 
'도서',
'역사소설',
2022,
'한국', 
'개요',
'"나는 안중근의 대의보다도 실탄 일곱 발과 여비 백 루블을 지니고 블라디보스토크에서 하얼빈으로 향하는 그의 가난과 청춘과 그의 살아 있는 몸에 관하여 말하려 했다." ',
'rgb(50,50,50)',
'하얼빈 포스터 원본명',
'하얼빈 포스터 변경명',
'하얼빈 프로필 포스터 원본명',
'하얼빈 프로필 포스터 변경명',
'http:dsjfjdsfj.com',
SYSDATE,
'Y'
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
01,
01,
3.5,
'너무 재미있다.',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
01,
02,
3.5,
'매우 재미있다.',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
01,
03,
3.5,
'아주 재미있다.',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
02,
04,
3.5,
'그냥 그렇다',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
02,
05,
3.5,
'그냥 그렇다',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
02,
06,
3.5,
'그냥 그렇다',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
03,
07,
3.5,
'재밌다',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
03,
08,
3.5,
'재밌다',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
03,
09,
3.5,
'재밌다',
SYSDATE,
7
);

INSERT INTO RATE
VALUES 
(RATE_SEQ.NEXTVAL, 
04,
10,
3.5,
'유익',
SYSDATE,
7
);

INSERT INTO CONTENTSPEOPLE 
VALUES
(1,
3,
'주연');

INSERT INTO CONTENTSPEOPLE 
VALUES
(2,
4,
'조연');

INSERT INTO CONTENTSPEOPLE 
VALUES
(3,
5,
'주연');

INSERT INTO CONTENTSPEOPLE 
VALUES
(4,
6,
'조연');

INSERT INTO CONTENTSPEOPLE 
VALUES
(5,
7,
'주연');

COMMIT;

-- PRODUCT, REVIEW, ORDERS, PAY, CART 테이블 및 임시 MEMBER 테이블 테스트값 추가
INSERT INTO PRODUCT VALUES (SEQ_PNO.NEXTVAL, '영화상품굿즈', 19000, 10, '상품내용설명', 1, SYSDATE, 'Y', '원래파일이름', '바뀐파일이름');
INSERT INTO REVIEW VALUES (SEQ_REVNO.NEXTVAL, 1, SYSDATE, ' 리뷰 내용');
INSERT INTO ORDERS VALUES (1, 1, 1, SYSDATE, 5, '남양주 우리집', 19000);
INSERT INTO ORDERS VALUES (1, 1, 2, SYSDATE, 5, '남양주 우리집', 19000);
INSERT INTO ORDERS VALUES (1, 1, 3, SYSDATE, 5, '남양주 우리집', 19000);
INSERT INTO ORDERS VALUES (1, 2, 1, SYSDATE, 5, '남양주 우리집', 19000);
INSERT INTO PAY VALUES (SEQ_PAYNO.NEXTVAL, '1Q2W3E4R', 123412341234, '계좌이체');
INSERT INTO CART VALUES (1, 1);
INSERT INTO CART VALUES (1, 2);
INSERT INTO CART VALUES (1, 3);
-- 회원번호 1번으로 임시로 만들어두었습니다 나중에 삭제하셔도 됩니다!
INSERT INTO MEMBER VALUES (1, 'admin', '1234', '관리자', 'admin@voda.com', '01012345678', '우리집', 'M', SYSDATE, SYSDATE, 'M', 'L', 'MY');






------------------------------------------------
--------------------- DROP --------------------
------------------------------------------------

-- DROP TABLE BOARD;
-- DROP TABLE CART;
-- DROP TABLE COMMENTS;
-- DROP TABLE CONTENTS;
-- DROP TABLE CONTENTSPEOPLE;
-- DROP TABLE CVIEW;
-- DROP TABLE LIKES;
-- DROP TABLE MEMBER;
-- DROP TABLE NOTICE;
-- DROP TABLE OREDERS;
-- DROP TABLE PAY;
-- DROP TABLE PEOPLE;
-- DROP TABLE PRODUCT;
-- DROP TABLE RATE;
-- DROP TABLE REVIEW;
-- DROP TABLE VISIT;

-- DROP SEQUENCE CONTENTS_SEQ;
-- DROP SEQUENCE MEMBER_SEQ;
-- DROP SEQUENCE RATE_SEQ;
-- DROP SEQUENCE SEQ_BOARD_NO;
-- DROP SEQUENCE SEQ_CARTNO;
-- DROP SEQUENCE SEQ_COMMENTS_NO;
-- DROP SEQUENCE SEQ_CONTENTSPEOPLE_NO;
-- DROP SEQUENCE SEQ_CVIEW_NO;
-- DROP SEQUENCE SEQ_NOTICE_NO;
-- DROP SEQUENCE SEQ_PAYNO;
-- DROP SEQUENCE SEQ_PEOPLE_NO;
-- DROP SEQUENCE SEQ_PNO_NO;
-- DROP SEQUENCE SEQ_REVNO;
-- DROP SEQUENCE SEQ_UNO;
-- DROP SEQUENCE SEQ_VISIT_NO;